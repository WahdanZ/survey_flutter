import 'package:collection/collection.dart';
import 'package:form_bloc/form_bloc.dart';
import 'package:poll_flutter/base/domain/index.dart';
import 'package:poll_flutter/base/error/failure.dart';
import 'package:poll_flutter/features/poll/domain/entities/poll_entity.dart';
import 'package:poll_flutter/features/poll/domain/use_cases/get_latest_poll_use_cast.dart';

class PollFormBloc extends FormBloc<String, String> {
  final GetLatestPollUseCase _pollUseCase;

  PollFormBloc(this._pollUseCase) {
    emitLoading();
    _pollUseCase.execute(params: Any()).then((value) => value.when(
        (result) => _mapPollToFormFields(result),
        failure: (failure) => _mapFailureToError(failure)));
  }

  @override
  void onSubmitting() {
    emitSuccess(canSubmitAgain: true);
  }

  _mapPollToFormFields(Poll result) {
    addFieldBloc(
        step: 0,
        fieldBloc: BooleanFieldBloc(
            name: "terms",
            extraData: result,
            validators: [FieldBlocValidators.required]));

    result.questions.toSet().forEachIndexed((index, question) {
      addFieldBloc(step: index + 1, fieldBloc: _mapQuestionsToFiled(question));
    });
    emitLoaded();
  }

  FieldBloc _mapQuestionsToFiled(Question question) {
    switch (question.type) {
      case QuestionType.multiple:
        return MultiSelectFieldBloc<Answer, Question>(
            name: question.id,
            validators: [if (question.required) FieldBlocValidators.required],
            extraData: question,
            items: question.answers ?? []);
      case QuestionType.single:
      case QuestionType.rating:
        return SelectFieldBloc<Answer, Question>(
            name: question.id,
            validators: [if (question.required) FieldBlocValidators.required],
            extraData: question,
            items: question.answers ?? []);
      case QuestionType.text:
        return TextFieldBloc(
            name: question.id,
            extraData: question,
            validators: [if (question.required) FieldBlocValidators.required]);
    }
  }

  _mapFailureToError(Failure failure) {
    emitLoadFailed(
        failureResponse: failure.map((value) => value.code,
            api: (api) => api.message.toString(),
            unAuthorized: (_) => "UnAuthorized",
            noInternet: (_) => "No Internet Connection",
            unknown: (_) => "Unknown Error"));
  }

  loadPoll() {}
}
