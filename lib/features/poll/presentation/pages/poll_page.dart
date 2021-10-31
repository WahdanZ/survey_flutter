import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:form_bloc/form_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poll_flutter/features/poll/index.dart';
import 'package:poll_flutter/features/poll/presentation/widgets/index.dart';
import 'package:poll_flutter/features/poll/presentation/widgets/survey_front_widget.dart';

class PollPage extends StatefulWidget {
  const PollPage({Key? key}) : super(key: key);

  @override
  _PollPageState createState() => _PollPageState();
}

class _PollPageState extends State<PollPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PollFormBloc, FormBlocState>(
        bloc: context.read<PollFormBloc>()..loadPoll(),
        buildWhen: (p, c) =>
            p.numberOfSteps != c.numberOfSteps ||
            p.currentStep != c.currentStep,
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
                leading: state.currentStep > 0
                    ? BackButton(
                        onPressed: () =>
                            {context.read<PollFormBloc>().previousStep()},
                      )
                    : null),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ...state
                          .fieldBlocs(state.currentStep)
                          ?.values
                          .mapIndexed((index, field) {
                            return [
                              if (index == 0 && field is BooleanFieldBloc)
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
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 48)),
                      child: Text('Next',
                          style: GoogleFonts.openSans(
                            textStyle: Theme.of(context).textTheme.headline4,
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          )),
                      onPressed: state.canSubmit
                          ? () {
                              context.read<PollFormBloc>().submit();
                            }
                          : null)
                ],
              ),
            ),
          );
        });
  }
}
