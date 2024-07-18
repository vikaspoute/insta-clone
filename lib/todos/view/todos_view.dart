import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/todos/cubit/todos_cubit.dart';

class TodosView extends StatefulWidget {
  const TodosView({super.key});

  @override
  State<TodosView> createState() => _TodosViewState();
}

class _TodosViewState extends State<TodosView> {
  @override
  void initState() {
    super.initState();
    context.read<TodosCubit>().fetchTodos();
  }

  @override
  Widget build(BuildContext context) {
    final todos = context.select((TodosCubit cubit) => cubit.state);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.separated(
                itemCount: todos.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final todo = todos[index];
                  return Text(todo);
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
