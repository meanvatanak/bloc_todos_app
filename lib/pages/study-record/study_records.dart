import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class StudyRecords extends StatelessWidget {
  const StudyRecords({super.key});

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
            'Study Records',
            style: TextStyle(color: whiteColor),
          ),
        ),
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.95,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        context, '/study-record/attendance-list');
                  },
                  child: Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Center(
                          child: Text(
                            'Attendance Records',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(200),
                            border: Border.all(
                              color: secondaryColor,
                              width: 5,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Icon(
                              Icons.people_alt_outlined,
                              size: 70,
                              color: whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: primaryColor,
                thickness: 5,
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/study-record/score-lists');
                  },
                  child: Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Center(
                          child: Text(
                            'Score Records',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(200),
                            border: Border.all(
                              color: secondaryColor,
                              width: 5,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Icon(
                              Icons.credit_score,
                              size: 70,
                              color: whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: primaryColor,
                thickness: 5,
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/study-record/total-records');
                  },
                  child: Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Center(
                          child: Text(
                            'Total Records',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(200),
                            border: Border.all(
                              color: secondaryColor,
                              width: 5,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Icon(
                              Icons.grading,
                              size: 70,
                              color: whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
