import 'package:bloc_todos_app/widgets/tasks/recycle_bin.dart';
import 'package:flutter/material.dart';

import '../../../utilities/constants.dart';
import '../../../widgets/tasks/add_task.dart';

class RecycleBin extends StatefulWidget {
  const RecycleBin({super.key});

  @override
  State<RecycleBin> createState() => _RecycleBinState();
}

class _RecycleBinState extends State<RecycleBin> {
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
          'Recycle Bin',
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
          DeletedTasks(),
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
