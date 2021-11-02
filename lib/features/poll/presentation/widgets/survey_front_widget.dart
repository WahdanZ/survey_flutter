import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poll_flutter/base/index.dart';
import 'package:poll_flutter/features/poll/domain/entities/index.dart';
import 'package:url_launcher/url_launcher.dart';

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
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(poll.title,
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 32,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(poll.description,
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              )),
        ),
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
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          if (await canLaunch(poll.termsAndConditionsUrl)) {
                            await launch(
                              poll.termsAndConditionsUrl,
                              forceSafariVC: false,
                              forceWebView: false,
                            );
                          } else {
                            logger.e(
                                'Could not launch ${poll.termsAndConditionsUrl}');
                          }
                        })
                ])),
            //.textAlignment(align: TextAlign.left)
            //.textColor(Colors.white),
          ),
        )
      ],
    );
  }
}
