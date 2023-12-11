import 'package:bloc_todos_app/utilities/constants.dart';
import 'package:bloc_todos_app/widgets/tasks/add_task.dart';
import 'package:bloc_todos_app/widgets/tasks/tasks.dart';
import 'package:flutter/material.dart';

class MyTasks extends StatelessWidget {
  MyTasks({super.key});

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
      body: Column(
        children: [
          Tasks(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addTask(context),
        tooltip: 'Add Task',
        backgroundColor: primaryColor,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
