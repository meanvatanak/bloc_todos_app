import 'package:camasean/constants/constants.dart';
import 'package:flutter/material.dart';

class JobDetail extends StatelessWidget {
  const JobDetail({Key? key}) : super(key: key);

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
            color: Colors.white,
          ),
        ),
        title: Center(
          child: const Text(
            'Job Detail',
            style: TextStyle(color: Colors.white),
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
                Text(
                  'Stock Controller (Male)',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                Divider(
                  color: primaryColor,
                  thickness: 2,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Job Description:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor: secondaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '- Daily input data of book record into excel with system;\n' +
                        '- Fulfill the book store and front desk (Every week);\n' +
                        '- Calculate weekly motor parking revenue;\n' +
                        '- Prepare and process purchase orders for supplies (Cleaning and Stationary);\n' +
                        '- Control stock materials of cleaning and office supplies for make sure that all amount of these products and supplies can satisfy the demand all departments;\n' +
                        '- Take note all request in stock.\n' +
                        '- Perform other tasks assigned by supervisor',
                    style: TextStyle(
                      fontSize: 16,
                      color: primaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Job Requirement:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor: secondaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '- Year 4 or Bachelor’s degree in management or related field\n' +
                        '- At least 1-year experience in stock control tasks (No experience is also acceptable)\n' +
                        '- Knowledge of computer program (MS Word, Excel, Powerpoint) \n' +
                        '- Good command of English, honest, friendly, humble, open-minded, and willing to learn',
                    style: TextStyle(
                      fontSize: 16,
                      color: primaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'How to Apply:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor: secondaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Interested individuals may send their CVs and proof of qualification to:\n' +
                        '- Email: hr@camasean.edu.kh\n' +
                        '- Telegram: https://t.me/hrcamasean\n' +
                        '- More info: 093 900 167',
                    style: TextStyle(
                      fontSize: 16,
                      color: primaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Working Hours:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor: secondaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Monday - Friday\n' +
                        '- Morning: 8:00AM - 12:00PM\n' +
                        '- Afternoon: 2:00PM - 7:00PM\n' +
                        '& Saturday: 8:00AM - 12:00PM (half day)',
                    style: TextStyle(
                      fontSize: 16,
                      color: primaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Job Benefits:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor: secondaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '- Seniority + NSSF\n' +
                        '- Incentive\n' +
                        '- Annual salary increment\n' +
                        '- High chance of getting promotion\n' +
                        '- Free study (Chinese or English) at CAM-ASEAN\n',
                    style: TextStyle(
                      fontSize: 16,
                      color: primaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Applicant End:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor: secondaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '30 December 2023',
                    style: TextStyle(
                      fontSize: 16,
                      color: primaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
