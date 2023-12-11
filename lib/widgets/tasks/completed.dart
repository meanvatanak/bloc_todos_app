import 'package:bloc_todos_app/widgets/tasks/edit_task.dart';
import 'package:bloc_todos_app/widgets/tasks/show_task.dart';
import 'package:flutter/material.dart';

class TasksCompleted extends StatefulWidget {
  const TasksCompleted({
    super.key,
  });

  @override
  State<TasksCompleted> createState() => _TasksCompletedState();
}

class _TasksCompletedState extends State<TasksCompleted> {
  // Map of tasks
  final List<Map<String, dynamic>> tasksList = [
    {
      'name': 'Buy milk',
      'description': 'Buy milk from the supermarket',
      'due_date': '2024-04-10',
      'status': false,
      'deletedStatus': false,
    },
    {
      'name': 'Buy eggs',
      'description': 'Buy eggs from the supermarket',
      'due_date': '2024-01-10',
      'status': false,
      'deletedStatus': false,
    },
    {
      'name': 'Buy bread',
      'description': 'Buy bread from the supermarket',
      'due_date': '2024-10-10',
      'status': false,
      'deletedStatus': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: tasksList.length,
        itemBuilder: (context, index) {
          final task = tasksList[index];
          return ListTile(
            title: Text(
              task['name'],
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
              ),
            ),
            leading: Checkbox(
              value: true,
              onChanged: (value) {
                setState(() {
                  tasksList[index]['status'] = value;
                });
              },
            ),
            onLongPress: () {
              setState(() {});
            },
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: ShowTask(
                      name: task['name'],
                      description: task['description'],
                      dueDate: task['due_date'],
                    ),
                  ),
                ),
              );
            },
            trailing: IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                      ),
                      child: EditTask(),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
