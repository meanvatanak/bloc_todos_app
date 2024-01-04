import 'package:camasean/widgets/attendance_level_row.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class AttendanceLevelList extends StatelessWidget {
  const AttendanceLevelList({super.key});

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
            'Level Lists',
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
                  height: 10,
                ),
                AttendanceLevelRow(
                  order: '1',
                  level: 'GEP5',
                  term: 'English Term 30',
                ),
                AttendanceLevelRow(
                  order: '2',
                  level: 'GEP6',
                  term: 'English Term 31',
                ),
                AttendanceLevelRow(
                  order: '3',
                  level: 'GEP7',
                  term: 'English Term 32',
                ),
                AttendanceLevelRow(
                  order: '4',
                  level: 'GEP8',
                  term: 'English Term 33',
                ),
                AttendanceLevelRow(
                  order: '5',
                  level: 'GEP9',
                  term: 'English Term 34',
                ),
                AttendanceLevelRow(
                  order: '6',
                  level: 'GEP10',
                  term: 'English Term 35',
                ),
                AttendanceLevelRow(
                  order: '7',
                  level: 'GEP11',
                  term: 'English Term 36',
                ),
                AttendanceLevelRow(
                  order: '8',
                  level: 'GEP12',
                  term: 'English Term 37',
                ),
                AttendanceLevelRow(
                  order: '9',
                  level: 'GEP13',
                  term: 'English Term 38',
                ),
                AttendanceLevelRow(
                  order: '10',
                  level: 'GEP14',
                  term: 'English Term 39',
                ),
                AttendanceLevelRow(
                  order: '11',
                  level: 'GEP15',
                  term: 'English Term 40',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
