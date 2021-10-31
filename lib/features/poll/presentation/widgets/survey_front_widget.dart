import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:poll_flutter/features/poll/domain/entities/index.dart';

class SurveyFrontWidget extends StatelessWidget {
  final BooleanFieldBloc booleanFieldBloc;
  final Poll poll;
  const SurveyFrontWidget(
      {Key? key, required this.poll, required this.booleanFieldBloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(poll.imageUrl),
        CheckboxFieldBlocBuilder(
          isEnabled: true,
          booleanFieldBloc: booleanFieldBloc,
          controlAffinity: FieldBlocBuilderControlAffinity.leading,
          checkColor: Colors.white,
          body: Container(
            alignment: Alignment.centerLeft,
            child: RichText(
                text: TextSpan(
                    text: 'I\'ve read and accept the ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    children: [
                  TextSpan(
                      text: 'Terms and Conditions',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                      ),
                      children: [],
                      recognizer: TapGestureRecognizer()..onTap = () {})
                ])),
            //.textAlignment(align: TextAlign.left)
            //.textColor(Colors.white),
          ),
        )
      ],
    );
  }
}
