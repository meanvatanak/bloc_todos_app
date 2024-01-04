import 'package:camasean/widgets/total_level_row.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class TotalLevelList extends StatelessWidget {
  const TotalLevelList({super.key});

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
            'Total Level Lists',
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
                TotalLevelRow(
                  order: '1',
                  level: 'GEP5',
                  term: 'English Term 30',
                ),
                TotalLevelRow(
                  order: '2',
                  level: 'GEP6',
                  term: 'English Term 31',
                ),
                TotalLevelRow(
                  order: '3',
                  level: 'GEP7',
                  term: 'English Term 32',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
