import 'package:flutter/material.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  // map of tasks categories
  final List<Map<String, dynamic>> tasksCategoriesList = [
    {
      'title': 'House Works',
      'deletedStatus': false,
    },
    {
      'title': 'Office Works',
      'deletedStatus': false,
    },
    {
      'title': 'School Works',
      'deletedStatus': false,
    },
    {
      'title': 'Personal Works',
      'deletedStatus': false,
    },
    {
      'title': 'Other Works',
      'deletedStatus': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: tasksCategoriesList.length,
        itemBuilder: (context, index) {
          final taskCategory = tasksCategoriesList[index];
          return ListTile(
            title: Text(taskCategory['title']),
            leading: const Icon(Icons.category),
            trailing: const Icon(Icons.arrow_forward_ios),
            onLongPress: () {
              setState(() {});
            },
            onTap: () {
              Navigator.pushNamed(
                context,
                '/tasks-list',
                arguments: {
                  'id': taskCategory['id'],
                  'title': taskCategory['title'],
                },
              );
            },
          );
        },
      ),
    );
  }
}
