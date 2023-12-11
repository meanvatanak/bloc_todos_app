import 'package:flutter/material.dart';

import '../../../utilities/constants.dart';
import '../../../widgets/tasks/add_task.dart';
import '../../../widgets/tasks/tasks.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key, required this.routeArguments});

  final Map<String, dynamic> routeArguments;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/tasks-completed',
                arguments: {
                  'title': 'Completed Tasks',
                  'description': 'This is the completed tasks page',
                },
              );
            },
            icon: const Icon(
              Icons.check_circle_outline,
              color: Colors.white,
            ),
          ),
        ],
      ),
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
