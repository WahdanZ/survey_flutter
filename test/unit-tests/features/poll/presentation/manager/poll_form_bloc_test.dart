import 'package:bloc_test/bloc_test.dart';
import 'package:form_bloc/form_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:poll_flutter/base/index.dart';
import 'package:poll_flutter/features/poll/domain/repositories/poll_repository.dart';
import 'package:poll_flutter/features/poll/domain/use_cases/get_latest_poll_use_cast.dart';
import 'package:poll_flutter/features/poll/index.dart';
import 'package:poll_flutter/features/poll/presentation/manager/poll_form_bloc.dart';
import 'package:test/test.dart';

import '../mock/mock_poll.dart';

class MockPollRepository extends Mock implements PollRepository {}

void main() {
  setUpAll(() {
    registerFallbackValue(MockPollRepository());
  });
  group("Poll Form Bloc", () {
    late PollRepository mockPollRepository;
    setUpAll(() {
      mockPollRepository = MockPollRepository();
    });

    blocTest<PollFormBloc, FormBlocState<Poll?, String>>(
        'When load poll number of form filed should be number'
        ' of question + form file for terms and conditions  ',
        build: () {
          when(() => mockPollRepository.getLatestPoll())
              .thenAnswer((_) async => CustomResult(mockPoll1));

          return PollFormBloc(GetLatestPollUseCase(mockPollRepository));
        },
        act: (formBloc) => formBloc.loadPoll(),
        verify: (formBloc) {
          expect(formBloc.state.fieldBlocs()?.length,
              mockPoll1.questions.length + 1);
        });
    blocTest<PollFormBloc, FormBlocState<Poll?, String>>(
        'When question is Single Form Filed should be SelectFieldBloc',
        build: () {
          when(() => mockPollRepository.getLatestPoll()).thenAnswer(
              (_) async => CustomResult(mockPollWithSingleQuestionType));

          return PollFormBloc(GetLatestPollUseCase(mockPollRepository));
        },
        act: (formBloc) => formBloc.loadPoll(),
        verify: (formBloc) {
          expect(formBloc.state.fieldBlocs()?.length,
              mockPoll1.questions.length + 1);
          expect(formBloc.state.fieldBlocs()?.values,
              [isA<SelectFieldBloc>(), isA<SelectFieldBloc>()]);
        });

    blocTest<PollFormBloc, FormBlocState<Poll?, String>>(
        'When question is Multi Form Filed should be MutliSelectFieldBloc',
        build: () {
          when(() => mockPollRepository.getLatestPoll()).thenAnswer(
              (_) async => CustomResult(mockPollWithMultipleQuestionType));

          return PollFormBloc(GetLatestPollUseCase(mockPollRepository));
        },
        act: (formBloc) => formBloc.loadPoll(),
        verify: (formBloc) {
          expect(formBloc.state.fieldBlocs()?.length,
              mockPoll1.questions.length + 1);
          expect(formBloc.state.fieldBlocs()?.values,
              [isA<SelectFieldBloc>(), isA<MultiSelectFieldBloc>()]);
        });
    blocTest<PollFormBloc, FormBlocState<Poll?, String>>(
        'When question is Text Form Filed should be TextFieldBloc',
        build: () {
          when(() => mockPollRepository.getLatestPoll()).thenAnswer(
              (_) async => CustomResult(mockPollWithTextQuestionType));

          return PollFormBloc(GetLatestPollUseCase(mockPollRepository));
        },
        act: (formBloc) => formBloc.loadPoll(),
        verify: (formBloc) {
          expect(formBloc.state.fieldBlocs()?.length,
              mockPoll1.questions.length + 1);
          expect(formBloc.state.fieldBlocs()?.values,
              [isA<SelectFieldBloc>(), isA<TextFieldBloc>()]);
        });
    blocTest<PollFormBloc, FormBlocState<Poll?, String>>(
      'Emit Failure with No Internet Connection if there is no Internet Connection ',
      build: () {
        when(() => mockPollRepository.getLatestPoll()).thenAnswer(
            (_) async => CustomResult.failure(Failure.noInternet()));

        return PollFormBloc(GetLatestPollUseCase(mockPollRepository));
      },
      act: (formBloc) => formBloc.loadPoll(),
      verify: (formBloc) {
        expect(formBloc.state.fieldBlocs()?.length, 0);
      },
      expect: () => [
        isA<FormBlocLoading>(),
        predicate<FormBlocLoadFailed>(
            (state) => state.failureResponse == 'No Internet Connection')
      ],
    );

    blocTest<PollFormBloc, FormBlocState<Poll?, String>>(
      'Emit Failure with Un Authorized message if user not allow to see this poll ',
      build: () {
        when(() => mockPollRepository.getLatestPoll()).thenAnswer(
            (_) async => CustomResult.failure(Failure.unAuthorized()));

        return PollFormBloc(GetLatestPollUseCase(mockPollRepository));
      },
      act: (formBloc) => formBloc.loadPoll(),
      expect: () => [
        isA<FormBlocLoading>(),
        predicate<FormBlocLoadFailed>(
            (state) => state.failureResponse == 'UnAuthorized')
      ],
      verify: (formBloc) {
        expect(formBloc.state.fieldBlocs()?.length, 0);
      },
    );
  });
}
