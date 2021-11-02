import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:flutter_form_bloc/src/utils/utils.dart';
import 'package:form_bloc/form_bloc.dart';

/// A material design radio buttons.
class HorizontalRadioButtonGroupFieldBlocBuilder<Value>
    extends StatelessWidget {
  const HorizontalRadioButtonGroupFieldBlocBuilder({
    Key? key,
    required this.selectFieldBloc,
    required this.itemBuilder,
    this.enableOnlyWhenFormBlocCanSubmit = false,
    this.isEnabled = true,
    this.errorBuilder,
    this.padding,
    this.decoration = const InputDecoration(),
    this.canDeselect = true,
    this.nextFocusNode,
    this.animateWhenCanShow = true,
  }) : super(key: key);

  /// {@macro flutter_form_bloc.FieldBlocBuilder.fieldBloc}
  final SelectFieldBloc<Value, dynamic> selectFieldBloc;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.stringItemBuilder}
  final FieldBlocStringItemBuilder<Value> itemBuilder;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.errorBuilder}
  final FieldBlocErrorBuilder? errorBuilder;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.enableOnlyWhenFormBlocCanSubmit}
  final bool enableOnlyWhenFormBlocCanSubmit;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.isEnabled}
  final bool isEnabled;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.padding}
  final EdgeInsetsGeometry? padding;

  /// if `true` the radio button selected can
  ///  be deselect by tapping.
  final bool canDeselect;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.decoration}
  final InputDecoration decoration;

  /// {@macro flutter_form_bloc.FieldBlocBuilder.nextFocusNode}
  final FocusNode? nextFocusNode;

  /// {@macro  flutter_form_bloc.FieldBlocBuilder.animateWhenCanShow}
  final bool animateWhenCanShow;

  @override
  Widget build(BuildContext context) {
    return CanShowFieldBlocBuilder(
      fieldBloc: selectFieldBloc,
      animate: animateWhenCanShow,
      builder: (_, __) {
        return BlocBuilder<SelectFieldBloc<Value, dynamic>,
            SelectFieldBlocState<Value, dynamic>>(
          bloc: selectFieldBloc,
          builder: (context, state) {
            final isEnabled = fieldBlocIsEnabled(
              isEnabled: this.isEnabled,
              enableOnlyWhenFormBlocCanSubmit: enableOnlyWhenFormBlocCanSubmit,
              fieldBlocState: state,
            );

            return DefaultFieldBlocBuilderPadding(
              padding: padding as EdgeInsets?,
              child: Stack(
                children: <Widget>[
                  InputDecorator(
                    decoration: _buildDecoration(context, state, isEnabled),
                    isEmpty: false,
                    child: Opacity(
                      opacity: 0.0,
                      child: _buildRadioButtons(context, state, isEnabled),
                    ),
                  ),
                  InputDecorator(
                    decoration: Style.inputDecorationWithoutBorder.copyWith(
                      contentPadding: Style.getGroupFieldBlocContentPadding(
                        isVisible: true,
                        decoration: decoration,
                      ),
                    ),
                    child: _buildRadioButtons(context, state, isEnabled),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  _buildRadioButtons(BuildContext context,
      SelectFieldBlocState<Value, dynamic> state, bool isEnable) {
    final onChanged = fieldBlocBuilderOnChange<Value?>(
      isEnabled: isEnabled,
      nextFocusNode: nextFocusNode,
      onChanged: selectFieldBloc.updateValue,
    );
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...state.items.map((item) {
          return Expanded(
            child: InkWell(
              onTap: () => onChanged?.call(item),
              child: Column(
                children: [
                  Stack(
                    children: <Widget>[
                      Radio<Value>(
                        value: item,
                        groupValue: state.value,
                        onChanged: onChanged,
                      ),
                      if (canDeselect && item == state.value)
                        Theme(
                          data: Theme.of(context).copyWith(
                            unselectedWidgetColor: Colors.transparent,
                          ),
                          child: Radio<Value?>(
                            value: null,
                            groupValue: state.value,
                            onChanged: onChanged,
                          ),
                        )
                    ],
                  ),
                  DefaultFieldBlocBuilderTextStyle(
                    isEnabled: isEnabled,
                    child: Text(
                      itemBuilder(context, item),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        })
      ],
    );
  }

  InputDecoration _buildDecoration(BuildContext context,
      SelectFieldBlocState<Value?, dynamic> state, bool isEnable) {
    InputDecoration decoration = this.decoration;

    return decoration.copyWith(
      suffix: this.decoration.suffix != null ? SizedBox.shrink() : null,
      prefixIcon: this.decoration.prefixIcon != null ? SizedBox.shrink() : null,
      prefix: this.decoration.prefix != null ? SizedBox.shrink() : null,
      suffixIcon: this.decoration.suffixIcon != null ? SizedBox.shrink() : null,
      enabled: isEnable,
      contentPadding: Style.getGroupFieldBlocContentPadding(
        isVisible: false,
        decoration: decoration,
      ),
      errorText: Style.getErrorText(
        context: context,
        errorBuilder: errorBuilder,
        fieldBlocState: state,
        fieldBloc: selectFieldBloc,
      ),
    );
  }
}
