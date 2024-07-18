import 'package:api_repo/api_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/app/view/app_view.dart';
import 'package:instagram_clone/todos/cubit/todos_cubit.dart';

class App extends StatelessWidget {
  const App({required this.apiRepo, super.key});

  final ApiRepo apiRepo;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => TodosCubit(repo: apiRepo),
      child: const AppView(),
    );
  }
}
