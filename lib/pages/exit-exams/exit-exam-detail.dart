import 'package:camasean/widgets/exit_exam_test.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class ExitExamDetail extends StatelessWidget {
  const ExitExamDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // back to previous page
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: whiteColor,
          ),
        ),
        title: Center(
          child: const Text(
            'Exam Exam Detail',
            style: TextStyle(color: whiteColor),
          ),
        ),
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/logo/logo.png',
                  width: 200,
                  height: 200,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Exit Exam Batch 1',
                  style: TextStyle(
                    fontSize: 20,
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(
                  color: secondaryColor,
                  thickness: 2,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Program: Chinese Program',
                    style: TextStyle(
                      fontSize: 18,
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Room:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'A201',
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
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Time:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '8:00 AM - 11:00 AM',
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
                Divider(
                  color: secondaryColor,
                  thickness: 2,
                ),
                ExitExamTest(
                  routeArguments: {
                    'order': '1',
                    'test_title': 'Written Test',
                    'test_room': 'A102',
                    'test_duration': '3 hours',
                    'test_status': 'Not Started',
                  },
                ),
                ExitExamTest(
                  routeArguments: {
                    'order': '2',
                    'test_title': 'Oral Test',
                    'test_room': 'A103',
                    'test_duration': '3 hours',
                    'test_status': 'Not Started',
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
