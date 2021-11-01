import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poll_flutter/features/poll/index.dart';

import 'custom_checkbox_group_field_bloc_builder.dart';
import 'horizontal_radio_button_group_field_bloc.dart';

class QuestionWidget extends StatelessWidget {
  final SingleFieldBloc fieldBloc;
  const QuestionWidget({Key? key, required this.fieldBloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 48,
        ),
        ...[
          Text(
            (fieldBloc.state.extraData as Question).text,
            style: GoogleFonts.openSans(
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          if (fieldBloc is TextFieldBloc<Question>)
            TextFieldBlocBuilder(
              textFieldBloc: fieldBloc as TextFieldBloc,
              keyboardType: TextInputType.multiline,
              maxLengthEnforced: MaxLengthEnforcement.enforced,
              maxLines: 15,
              decoration: InputDecoration(
                labelText: '',
              ),
            ),
          if (fieldBloc is SelectFieldBloc)
            HorizontalRadioButtonGroupFieldBlocBuilder<Answer>(
                selectFieldBloc: fieldBloc as SelectFieldBloc<Answer, Question>,
                decoration: InputDecoration(
                  labelText: '',
                  border: InputBorder.none,
                ),
                itemBuilder: (_, item) => item.text),
          if (fieldBloc is MultiSelectFieldBloc)
            CustomCheckboxGroupFieldBlocBuilder<Answer>(
                multiSelectFieldBloc:
                    fieldBloc as MultiSelectFieldBloc<Answer, Question>,
                controlAffinity: FieldBlocBuilderControlAffinity.trailing,
                decoration: InputDecoration(
                  labelText: '',
                  border: InputBorder.none,
                ),
                itemBuilder: (_, item) => item.text)
        ]
      ],
    );
  }
}
