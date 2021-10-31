import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:poll_flutter/features/poll/data/repositories/poll_repository.dart';
import 'package:poll_flutter/features/poll/index.dart';
import 'package:poll_flutter/features/poll/presentation/pages/poll_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          PollFormBloc(GetLatestPollUseCase(PollRepositoryImp())),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: const PollPage(),
      ),
    );
  }
}
