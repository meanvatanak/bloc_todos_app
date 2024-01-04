import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../widgets/events_row.dart';

class EventLists extends StatelessWidget {
  const EventLists({super.key});

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
            'Events Lists',
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
                EventRow(
                  imagePath:
                      'http://camasean.edu.kh/img/events/Vko1700446350.jpg',
                  title: 'Conversation with Foreigners New Term',
                  date: 'December 06 to Jan 09, 2023',
                  time: '08:00 - 8:30 PM',
                ),
                SizedBox(
                  height: 10,
                ),
                EventRow(
                  imagePath:
                      'http://camasean.edu.kh/img/events/GeneralChineseProgramNewTermOlympicTiV1702351498.png',
                  title: 'General Chinese Program New Term',
                  date: 'December 06 to Jan 09, 2023',
                  time: '08:00 - 8:30 PM',
                ),
                SizedBox(
                  height: 10,
                ),
                EventRow(
                  imagePath:
                      'http://camasean.edu.kh/img/events/FoundationEnglishClassBatchIIINewClassOlympicoQW1702345194.png',
                  title: 'Foundation English Class Batch III New Class',
                  date: 'December 06 to Jan 09, 2023',
                  time: '08:00 - 8:30 PM',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
