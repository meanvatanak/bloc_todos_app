import 'package:cached_network_image/cached_network_image.dart';
import 'package:camasean/widgets/profile_row.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
            'Profile',
            style: TextStyle(color: whiteColor),
          ),
        ),
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Somnang Narong',
                            style: TextStyle(
                              fontSize: 18,
                              color: primaryColor,
                            ),
                          ),
                          Divider(
                            color: primaryColor,
                            thickness: 2,
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Name in Khmer:",
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "សំណាង ណារ៉ុង",
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
                              "Name in Chinese:",
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "苏曼南",
                              style: TextStyle(
                                fontSize: 16,
                                color: primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          color: primaryColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                            ),
                          ],
                          border: Border.all(
                            width: 5,
                            color: whiteColor,
                          ),
                        ),
                        child: CachedNetworkImage(
                          imageUrl:
                              "http://system.camasean.edu.kh/images/621d7dc461dbb.jpg",
                          imageBuilder: (context, imageProvider) => Image(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                          placeholder: (context, url) =>
                              CircularProgressIndicator.adaptive(),
                          errorWidget: (context, url, error) {
                            print("Error loading image: $error");
                            return Icon(Icons.error);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileRowTwoColumn(
                  leftLabel: 'Gender:',
                  leftValue: 'Female',
                  rightLabel: 'Nationality:',
                  rightValue: 'Cambodian',
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileRowTwoColumn(
                  leftLabel: 'Date of Birth:',
                  leftValue: '17-Feb-2003',
                  rightLabel: 'Place of Birth:',
                  rightValue: 'Takeo',
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileRowOneColumn(
                  label: 'Email:',
                  value: 'somnangnarong@gmail.com',
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileRowTwoColumn(
                  leftLabel: 'Facebook\'s Name:',
                  leftValue: 'Somnang Narong',
                  rightLabel: 'Phone:',
                  rightValue: '096 999 9999',
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileRowTwoColumn(
                  leftLabel: 'Education:',
                  leftValue: 'High School',
                  rightLabel: 'Grade:',
                  rightValue: 'Grade 12',
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileRowTwoColumn(
                  leftLabel: 'Last Level:',
                  leftValue: 'GEP 3',
                  rightLabel: 'Name of School:',
                  rightValue: 'ACE',
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileRowTwoColumn(
                  leftLabel: 'Occupation:',
                  leftValue: 'Student',
                  rightLabel: 'Address:',
                  rightValue: 'Olympic, Phnom Penh',
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileRowTwoColumn(
                  leftLabel: "Mother's Name:",
                  leftValue: 'Las Sothea',
                  rightLabel: "Mother's Occupation:",
                  rightValue: 'Farmer',
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileRowTwoColumn(
                  leftLabel: "Father's Name:",
                  leftValue: 'Pen Somnang',
                  rightLabel: "Father's Occupation:",
                  rightValue: 'Farmer',
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileRowTwoColumn(
                  leftLabel: "Guardian's Name:",
                  leftValue: "Pen Somnang",
                  rightLabel: "Guardian's Phone:",
                  rightValue: "087 888 888",
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileRowOneColumn(
                  label: 'How do you know CAM-ASEAN:',
                  value: "Friend",
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileRowOneColumn(
                  label: 'Referred Remark:',
                  value: "",
                ),
                SizedBox(
                  height: 10,
                ),
                ProfileRowOneColumn(
                  label: "Study Shift:",
                  value: "Afternoon",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
