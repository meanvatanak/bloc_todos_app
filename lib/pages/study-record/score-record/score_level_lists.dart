import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../widgets/score_level_row.dart';

class ScoreLevelList extends StatelessWidget {
  const ScoreLevelList({super.key});

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
                ScoreLevelRow(
                  order: '1',
                  level: 'GEP5',
                  term: 'English Term 30',
                ),
                ScoreLevelRow(
                  order: '2',
                  level: 'GEP6',
                  term: 'English Term 31',
                ),
                ScoreLevelRow(
                  order: '3',
                  level: 'GEP7',
                  term: 'English Term 32',
                ),
                ScoreLevelRow(
                  order: '4',
                  level: 'GEP8',
                  term: 'English Term 33',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
