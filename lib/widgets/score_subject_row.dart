import 'package:flutter/material.dart';

class ScoreSubjectRow extends StatelessWidget {
  const ScoreSubjectRow({
    super.key,
    required this.order,
    required this.subject,
    required this.teacher,
  });

  final String order;
  final String subject;
  final String teacher;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Text(order),
        ),
        title: Text(subject),
        subtitle: Text(teacher),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.pushNamed(
            context,
            '/study-record/score-list/subjects-list/score-detail',
          );
        },
      ),
    );
  }
}
