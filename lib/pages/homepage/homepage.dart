import 'package:camasean/constants/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/login', (route) => false);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: whiteColor,
          ),
        ),
        title: Center(
          child: const Text(
            'CAM-ASEAN',
            style: TextStyle(color: whiteColor),
          ),
        ),
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    Column(
                      children: [
                        Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/profile');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(150),
                                border: Border.all(
                                  color: secondaryColor,
                                  width: 5,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(
                                  Icons.perm_contact_cal_outlined,
                                  size: 90,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/scholarships');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(150),
                                border: Border.all(
                                  color: secondaryColor,
                                  width: 5,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(
                                  Icons.school_outlined,
                                  size: 90,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Scholarships',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Column(
                      children: [
                        Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/events');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(150),
                                border: Border.all(
                                  color: secondaryColor,
                                  width: 5,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(
                                  Icons.event_outlined,
                                  size: 90,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Events',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/jobs');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(150),
                                border: Border.all(
                                  color: secondaryColor,
                                  width: 5,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(
                                  Icons.work_outline_outlined,
                                  size: 90,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Job Opportunities',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Column(
                      children: [
                        Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/study-records');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(150),
                                border: Border.all(
                                  color: secondaryColor,
                                  width: 5,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(
                                  Icons.receipt_long_outlined,
                                  size: 90,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Study Records',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/payment-records');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(150),
                                border: Border.all(
                                  color: secondaryColor,
                                  width: 5,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(
                                  Icons.paid_outlined,
                                  size: 90,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Payment Records',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Column(
                      children: [
                        Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/exit-exams');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(150),
                                border: Border.all(
                                  color: secondaryColor,
                                  width: 5,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(
                                  Icons.notes_outlined,
                                  size: 90,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Exit Exams',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/change-password');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(150),
                                border: Border.all(
                                  color: secondaryColor,
                                  width: 5,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(
                                  Icons.account_circle_outlined,
                                  size: 90,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Change Password',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
