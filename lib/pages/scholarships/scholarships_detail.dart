import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class ScholarshipDetail extends StatelessWidget {
  const ScholarshipDetail({super.key});

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
            'Scholarship Detail',
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
                  height: 10,
                ),
                Text(
                  'CAM-ASEAN Scholarship Competition',
                  style: TextStyle(
                    fontSize: 18,
                    color: primaryColor,
                  ),
                ),
                Divider(
                  color: primaryColor,
                  thickness: 2,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: primaryColor,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  // child: ClipRRect(
                  //   borderRadius: BorderRadius.circular(8.0),
                  //   child: Image.network(
                  //     width: MediaQuery.of(context).size.width * 0.9,
                  //     'http://camasean.edu.kh/img/web-front/scholarship/1n.jpg',
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  child: CachedNetworkImage(
                    imageUrl:
                        'http://camasean.edu.kh/img/events/Vko1700446350.jpg',
                    imageBuilder: (context, imageProvider) => ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                    placeholder: (context, url) =>
                        CircularProgressIndicator.adaptive(),
                    errorWidget: (context, url, error) {
                      print("Error loading image: $error");
                      return Icon(Icons.error);
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Scholarship 10% - 100% (2-4 Terms) Top 20 candidates in each branch will automatically pass Round 1 in CAM-ASEAN Annual Competition to stand a chance to win prizes and a trip to Malaysia and Singapore.',
                  style: TextStyle(
                    fontSize: 14,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Competition timelines and how to apply:',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '1. Orientation: 10th October 2020',
                    style: TextStyle(
                      fontSize: 14,
                      color: primaryColor,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '2. Written Test: 11th October 2020',
                    style: TextStyle(
                      fontSize: 14,
                      color: primaryColor,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '3. Speaking Test: 11th October 2020',
                    style: TextStyle(
                      fontSize: 14,
                      color: primaryColor,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '4. Announcement of Results: 12th October 2020',
                    style: TextStyle(
                      fontSize: 14,
                      color: primaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'How to apply:',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Click Here to fill out the form',
                    style: TextStyle(
                      fontSize: 14,
                      color: whiteColor,
                    ),
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
