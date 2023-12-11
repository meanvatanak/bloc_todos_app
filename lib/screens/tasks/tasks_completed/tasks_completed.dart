import 'package:bloc_todos_app/utilities/constants.dart';
import 'package:flutter/material.dart';

import '../../../widgets/tasks/add_task.dart';
import '../../../widgets/tasks/completed.dart';

class TasksCompletedList extends StatefulWidget {
  const TasksCompletedList({super.key, required this.routeArguments});

  final Map<String, dynamic> routeArguments;

  @override
  State<TasksCompletedList> createState() => _TasksCompletedListState();
}

class _TasksCompletedListState extends State<TasksCompletedList> {
  void _addTask(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: AddTask(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tasks',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: primaryColor,
      ),
      body: Column(
        children: [
          TasksCompleted(),
        ],
      ),
    );
  }
}
