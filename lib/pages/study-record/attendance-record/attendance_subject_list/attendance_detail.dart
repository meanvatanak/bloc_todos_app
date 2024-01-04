import 'package:camasean/widgets/attendance_criterias.dart';
import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';

class AttendanceDetail extends StatelessWidget {
  const AttendanceDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: whiteColor,
          ),
        ),
        title: Center(
          child: const Text(
            'Attendance Detail',
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
                  'Blueprint 2 (Elementary, Unit 1-4)',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                    fontSize: 20,
                  ),
                ),
                Divider(
                  color: secondaryColor,
                  thickness: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Card(
                        color: primaryColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 5,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Teacher: Mr. John',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: whiteColor,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'English Term 30',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: whiteColor,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                AttendanceCriteria(
                  criteria: 'Present',
                  value: 19.toString(),
                  prefixIcon: Icon(
                    Icons.check_circle_outline,
                    color: primaryColor,
                  ),
                ),
                AttendanceCriteria(
                  criteria: 'Absent',
                  value: 3.toString(),
                  prefixIcon: Icon(
                    Icons.person_off_outlined,
                    color: primaryColor,
                  ),
                ),
                AttendanceCriteria(
                  criteria: 'Permission',
                  value: 4.toString(),
                  prefixIcon: Icon(
                    Icons.playlist_add_check,
                    color: primaryColor,
                  ),
                ),
                AttendanceCriteria(
                  criteria: 'Late',
                  value: 8.toString(),
                  prefixIcon: Icon(
                    Icons.alarm,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
