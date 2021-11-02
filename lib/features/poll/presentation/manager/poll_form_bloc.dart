import 'package:collection/collection.dart';
import 'package:form_bloc/form_bloc.dart';
import 'package:poll_flutter/base/domain/index.dart';
import 'package:poll_flutter/base/error/failure.dart';
import 'package:poll_flutter/base/index.dart';
import 'package:poll_flutter/features/poll/domain/entities/index.dart';
import 'package:poll_flutter/features/poll/domain/entities/poll_entity.dart';
import 'package:poll_flutter/features/poll/domain/use_cases/get_latest_poll_use_cast.dart';
import 'package:poll_flutter/features/poll/domain/use_cases/submit_poll_use_case.dart';

class PollFormBloc extends FormBloc<Poll?, String> {
  final GetLatestPollUseCase _pollUseCase;
  final SubmitPollUseCase _submitPollUseCase;

  late Poll poll;

  PollFormBloc(this._pollUseCase, this._submitPollUseCase) {}

  @override
  void onSubmitting() {
    logger.d(state.toJson());

    if (state.isLastStep) {
      final result = state
          .toJson()
          .entries
          .skip(1)
          .map((e) => PollAnswer(questionId: e.key, value: e.value.toString()))
          .toList();
      _submitPollUseCase.execute(
          params: SubmitPollUseCaseParm(poll.id, result));
      emitSuccess(canSubmitAgain: true, successResponse: poll);
      clear();
    } else {
      emitSuccess(
        canSubmitAgain: true,
      );
    }
  }

  _mapPollToFormFields(Poll result) {
    this.poll = result;
    addFieldBloc(
        step: 0,
        fieldBloc: BooleanFieldBloc(
            name: "terms",
            extraData: result,
            validators: [FieldBlocValidators.required]));

    result.questions.forEachIndexed((index, question) {
      addFieldBloc(step: index + 1, fieldBloc: _mapQuestionsToFiled(question));
    });
    emitLoaded();
  }

  FieldBloc _mapQuestionsToFiled(Question question) {
    logger.d(question);
    switch (question.type) {
      case QuestionType.multiple:
        return MultiSelectFieldBloc<Answer, Question>(
            name: question.id,
            validators: [if (question.required) FieldBlocValidators.required],
            extraData: question,
            items: question.answers ?? [],
            toJson: (items) => items.map((e) => e.value).join(","));
      case QuestionType.single:
      case QuestionType.rating:
        return SelectFieldBloc<Answer, Question>(
            name: question.id,
            validators: [if (question.required) FieldBlocValidators.required],
            extraData: question,
            items: question.answers ?? [],
            toJson: (value) => value?.value ?? "");
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

  loadPoll() {
    emitLoading();
    _pollUseCase.execute(params: Any()).then((value) => value.when(
        (result) => _mapPollToFormFields(result),
        failure: (failure) => _mapFailureToError(failure)));
  }
}
