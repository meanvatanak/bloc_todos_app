import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';

class AttendanceDate extends StatelessWidget {
  const AttendanceDate({super.key});

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
            'Attendance Date',
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
                Card(
                  child: ListTile(
                    title: Text('01-December-2023'),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('03-December-2023'),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('05-December-2023'),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('07-December-2023'),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('09-December-2023'),
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
