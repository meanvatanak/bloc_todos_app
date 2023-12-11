import 'package:bloc_todos_app/utilities/constants.dart';
import 'package:bloc_todos_app/widgets/tasks_category/categories_list.dart';
import 'package:flutter/material.dart';

class TasksCategory extends StatelessWidget {
  const TasksCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tasks Category',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: primaryColor,
      ),
      body: Column(
        children: [
          CategoriesList(),
        ],
      ),
    );
  }
}
