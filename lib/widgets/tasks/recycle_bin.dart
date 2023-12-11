import 'package:bloc_todos_app/widgets/tasks/edit_task.dart';
import 'package:bloc_todos_app/widgets/tasks/show_task.dart';
import 'package:flutter/material.dart';

class DeletedTasks extends StatefulWidget {
  const DeletedTasks({
    super.key,
  });

  @override
  State<DeletedTasks> createState() => _DeletedTasksState();
}

class _DeletedTasksState extends State<DeletedTasks> {
  // Map of tasks
  final List<Map<String, dynamic>> tasksList = [
    {
      'title': 'Buy milk',
      'description': 'Buy milk from the supermarket',
      'due_date': '2024-04-10',
      'category_id': '4',
      'status': false,
      'deletedStatus': true,
    },
    {
      'title': 'Buy eggs',
      'description': 'Buy eggs from the supermarket',
      'due_date': '2024-01-10',
      'category_id': '4',
      'status': false,
      'deletedStatus': true,
    },
    {
      'title': 'Buy bread',
      'description': 'Buy bread from the supermarket',
      'due_date': '2024-10-10',
      'category_id': '4',
      'status': false,
      'deletedStatus': true,
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
              task['title'],
              style: TextStyle(
                decoration: task['deletedStatus']
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                color: task['deletedStatus'] ? Colors.red : Colors.black,
              ),
            ),
            leading: Checkbox(
              value: task['status'],
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
                      title: task['title'],
                      description: task['description'],
                      dueDate: task['due_date'],
                      // category_id: task['category_id'],
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
