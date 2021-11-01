import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:form_bloc/form_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poll_flutter/di/injector.dart';
import 'package:poll_flutter/features/poll/index.dart';
import 'package:poll_flutter/features/poll/presentation/widgets/dots_widget.dart';
import 'package:poll_flutter/features/poll/presentation/widgets/index.dart';
import 'package:poll_flutter/features/poll/presentation/widgets/survey_front_widget.dart';

import 'index.dart';

class PollPage extends StatefulWidget {
  const PollPage({Key? key}) : super(key: key);

  @override
  _PollPageState createState() => _PollPageState();
}

class _PollPageState extends State<PollPage> {
  late PollFormBloc _pollFormBloc;
  @override
  void initState() {
    _pollFormBloc = inject()..loadPoll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _pollFormBloc,
      child: FormBlocListener<PollFormBloc, Poll?, String>(
        onSuccess: (context, state) {
          if (state.stepCompleted == state.lastStep) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => SuccessPage(poll: state.successResponse)));
          }
        },
        child: BlocBuilder<PollFormBloc, FormBlocState>(
            buildWhen: (p, c) =>
                p.numberOfSteps != c.numberOfSteps ||
                p.currentStep != c.currentStep,
            builder: (context, state) {
              return Scaffold(
                appBar: AppBar(
                    leading: state.currentStep > 0
                        ? BackButton(
                            color: Colors.black,
                            onPressed: () => {_pollFormBloc.previousStep()},
                          )
                        : null,
                    backgroundColor: Colors.white,
                    title: Text(
                        _getCurrentTitle(
                            state.currentStep, state.numberOfSteps),
                        style: GoogleFonts.openSans(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ))),
                body: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: QuestionsPages(
                            numberOfSteps: state.numberOfSteps,
                          ),
                        ),
                      ),
                      if (state.currentStep != 0)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ...List.generate(
                                state.numberOfSteps - 1,
                                (index) => DotsWidget(
                                      isActive: index == state.currentStep - 1,
                                    ))
                          ],
                        ),
                      SizedBox(
                        height: 20,
                      ),
                      BlocBuilder<PollFormBloc, FormBlocState>(
                        bloc: _pollFormBloc,
                        builder: (context, state) {
                          return ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(100, 48)),
                              child: Text('Next',
                                  style: GoogleFonts.openSans(
                                    textStyle:
                                        Theme.of(context).textTheme.headline4,
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  )),
                              onPressed: state.isValid(state.currentStep)
                                  ? () {
                                      _pollFormBloc.submit();
                                    }
                                  : null);
                        },
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  String _getCurrentTitle(int currentStep, int total) {
    if (currentStep == 0)
      return "Survey";
    else
      return "Survey $currentStep/${total - 1} ";
  }
}

class QuestionsPages extends StatefulWidget {
  final int numberOfSteps;
  const QuestionsPages({Key? key, required this.numberOfSteps})
      : super(key: key);

  @override
  _QuestionsPagesState createState() => _QuestionsPagesState();
}

class _QuestionsPagesState extends State<QuestionsPages>
    with SingleTickerProviderStateMixin {
  late final TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: widget.numberOfSteps, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PollFormBloc, FormBlocState>(
      buildWhen: (p, c) =>
          p.numberOfSteps != c.numberOfSteps || p.currentStep != c.currentStep,
      builder: (context, state) {
        return Column(
          children: [
            ...state
                    .fieldBlocs(state.currentStep)
                    ?.values
                    .mapIndexed((index, field) {
                      return [
                        if (state.currentStep == 0 && field is BooleanFieldBloc)
                          SurveyFrontWidget(
                              poll: field.state.extraData,
                              booleanFieldBloc: field)
                        else if (field is SingleFieldBloc &&
                            field.state.extraData is Question)
                          QuestionWidget(
                            fieldBloc: field,
                          )
                      ];
                    })
                    .expand((w) => w)
                    .toList() ??
                [],
          ],
        );
      },
    );
  }
}
