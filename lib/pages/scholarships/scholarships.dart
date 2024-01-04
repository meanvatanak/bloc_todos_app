import 'package:camasean/constants/constants.dart';
import 'package:camasean/widgets/scholarship_row.dart';
import 'package:flutter/material.dart';

class ScholarshipLists extends StatelessWidget {
  const ScholarshipLists({super.key});

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
            'Scholarship Lists',
            style: TextStyle(color: whiteColor),
          ),
        ),
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ScholarshipRow(
                order: 1,
                title: 'CAM-ASEAN Scholarship Competition',
              ),
              ScholarshipRow(
                order: 2,
                title: 'CAM-ASEAN Sibling Scholarship',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
