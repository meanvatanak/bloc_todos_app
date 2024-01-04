import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ExitExamRow extends StatelessWidget {
  const ExitExamRow({
    super.key,
    required this.order,
    required this.title,
  });

  final String order;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: primaryColor,
          child: Text(
            order,
            style: TextStyle(color: whiteColor),
          ),
        ),
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.pushNamed(context, '/exit-exams/exit-exam-detail');
        },
      ),
    );
  }
}
