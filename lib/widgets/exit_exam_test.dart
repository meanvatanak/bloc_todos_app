import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ExitExamTest extends StatelessWidget {
  ExitExamTest({super.key, required this.routeArguments});

  final Map<String, dynamic> routeArguments;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: greyColor,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          SizedBox(
            width: double.infinity,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: primaryColor,
                child: Text(
                  routeArguments['order'] ?? '1',
                  style: TextStyle(
                    fontSize: 16,
                    color: whiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text(
                routeArguments['test_title'] ?? 'Written Test',
                style: TextStyle(
                  fontSize: 16,
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                routeArguments['test_room'] ?? 'A102',
                style: TextStyle(
                  fontSize: 16,
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Divider(
            color: secondaryColor,
            thickness: 2,
          ),
          SizedBox(
            width: double.infinity,
            child: ListTile(
              title: Text(
                'Listening Test',
                style: TextStyle(
                  fontSize: 16,
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                '25',
                style: TextStyle(
                  fontSize: 16,
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ListTile(
              title: Text(
                'Sentence Structure',
                style: TextStyle(
                  fontSize: 16,
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                '25',
                style: TextStyle(
                  fontSize: 16,
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ListTile(
              title: Text(
                'Writing',
                style: TextStyle(
                  fontSize: 16,
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                '25',
                style: TextStyle(
                  fontSize: 16,
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ListTile(
              title: Text(
                'Reading',
                style: TextStyle(
                  fontSize: 16,
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                '25',
                style: TextStyle(
                  fontSize: 16,
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
