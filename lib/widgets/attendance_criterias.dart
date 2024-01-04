import 'package:flutter/material.dart';

import '../constants/constants.dart';

class AttendanceCriteria extends StatelessWidget {
  const AttendanceCriteria({
    super.key,
    required this.criteria,
    required this.value,
    required this.prefixIcon,
  });

  final String criteria;
  final String value;
  final Icon? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: CircleAvatar(
            child: prefixIcon,
          ),
          title: Text(
            criteria,
            style: TextStyle(
              fontSize: 20,
              color: primaryColor,
            ),
          ),
          trailing: Text(
            value,
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/study-record/attendance-list/subjects-list/attendance-detail/attendance-date',
            );
          }),
    );
  }
}
