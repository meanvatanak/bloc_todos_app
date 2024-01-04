import 'package:camasean/widgets/total_score_criteria.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class TotalScoreDetail extends StatelessWidget {
  const TotalScoreDetail({super.key});

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
            'Total Score Detail',
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
                Image.asset(
                  'assets/logo/logo.png',
                  width: 200,
                  height: 200,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'GEP5',
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
                // Teacher
                // SizedBox(
                //   height: 20,
                // ),
                // Row(
                //   children: [
                //     Expanded(
                //       flex: 3,
                //       child: Card(
                //         color: primaryColor,
                //         child: Padding(
                //           padding: const EdgeInsets.symmetric(
                //             horizontal: 15,
                //             vertical: 5,
                //           ),
                //           child: Column(
                //             children: [
                //               Align(
                //                 alignment: Alignment.centerLeft,
                //                 child: Text(
                //                   'Teacher: Mr. John',
                //                   style: TextStyle(
                //                     fontWeight: FontWeight.bold,
                //                     color: whiteColor,
                //                     fontSize: 18,
                //                   ),
                //                 ),
                //               ),
                //               Align(
                //                 alignment: Alignment.centerLeft,
                //                 child: Text(
                //                   'English Term 30',
                //                   style: TextStyle(
                //                     fontWeight: FontWeight.bold,
                //                     color: whiteColor,
                //                     fontSize: 18,
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //     Expanded(
                //       flex: 1,
                //       child: Container(),
                //     ),
                //   ],
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // End Teacher
                TotalScoreCriteria(
                  criteria: 'Att & CP 10%',
                  value: 9.00.toString(),
                  prefixIcon: Icon(Icons.check_circle_outline),
                ),
                TotalScoreCriteria(
                  criteria: 'Homework 10%',
                  value: 10.00.toString(),
                  prefixIcon: Icon(Icons.menu_book),
                ),
                TotalScoreCriteria(
                  criteria: 'Pre/ST 10%',
                  value: 5.00.toString(),
                  prefixIcon: Icon(Icons.assignment),
                ),
                TotalScoreCriteria(
                  criteria: 'Quiz 10%',
                  value: 9.00.toString(),
                  prefixIcon: Icon(Icons.quiz),
                ),
                TotalScoreCriteria(
                  criteria: 'PE 10%',
                  value: 8.00.toString(),
                  prefixIcon: Icon(Icons.book_online),
                ),
                TotalScoreCriteria(
                  criteria: 'Mid-Term 20%',
                  value: 18.00.toString(),
                  prefixIcon: Icon(Icons.assignment_turned_in),
                ),
                TotalScoreCriteria(
                  criteria: 'Final 30%',
                  value: 27.00.toString(),
                  prefixIcon: Icon(Icons.assignment_turned_in),
                ),
                TotalScoreCriteria(
                  criteria: 'Total 100%',
                  value: 86.00.toString(),
                  prefixIcon: Icon(Icons.grading),
                ),
                TotalScoreCriteria(
                  criteria: 'Rank',
                  value: 11.00.toString(),
                  prefixIcon: Icon(Icons.grade),
                ),
                TotalScoreCriteria(
                  criteria: 'Grade',
                  value: "C",
                  prefixIcon: Icon(Icons.school_outlined),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
