import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ScholarshipRow extends StatelessWidget {
  const ScholarshipRow({
    super.key,
    required this.order,
    required this.title,
  });

  final int order;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // leading number order
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            order.toString(),
            style: TextStyle(
              fontSize: 20,
              color: whiteColor,
            ),
          ),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: primaryColor,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        // go to scholarship detail page
        Navigator.pushNamed(context, '/scholarship-detail');
      },
    );
  }
}
