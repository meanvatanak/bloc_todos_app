import 'package:flutter/material.dart';

class AttendanceLevelRow extends StatelessWidget {
  const AttendanceLevelRow({
    super.key,
    required this.order,
    required this.level,
    required this.term,
  });

  final String order;
  final String level;
  final String term;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Text(order),
        ),
        title: Text(level),
        subtitle: Text(term),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.pushNamed(
              context, '/study-record/attendance-list/subjects-list');
        },
      ),
    );
  }
}
