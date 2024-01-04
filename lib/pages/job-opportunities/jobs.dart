import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../widgets/job_row.dart';

class JobLists extends StatelessWidget {
  const JobLists({super.key});

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
            'Job Lists',
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
                JobRow(
                  order: 1,
                  title: 'Stock Controller (Male)',
                ),
                JobRow(
                  order: 2,
                  title: 'Customer Service (Female)',
                ),
                JobRow(
                  order: 3,
                  title: 'Deputy Head of English Department',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
