import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../widgets/exit_exam_row.dart';

class ExitExamLists extends StatelessWidget {
  const ExitExamLists({super.key});

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
            'Exam Exam Lists',
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
                Divider(
                  color: secondaryColor,
                  thickness: 2,
                ),
                ExitExamRow(
                  order: '1',
                  title: 'Exit Exam 1',
                ),
                ExitExamRow(
                  order: '2',
                  title: 'Exit Exam 4',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
