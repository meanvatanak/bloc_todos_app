import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';
import '../../../../widgets/score_subject_row.dart';

class ScoreSubjectLists extends StatelessWidget {
  const ScoreSubjectLists({super.key});

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
            'Subject Lists',
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
                ScoreSubjectRow(
                  order: '1',
                  subject: 'Blueprint 2 (Elementary, Unit 1-4)',
                  teacher: 'Mr. John',
                ),
                ScoreSubjectRow(
                  order: '2',
                  subject: 'Blueprint 2 (Elementary, Unit 5-8)',
                  teacher: 'Mr. Tom',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
