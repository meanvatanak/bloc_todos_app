import 'package:cached_network_image/cached_network_image.dart';
import 'package:camasean/constants/constants.dart';
import 'package:flutter/material.dart';

class EventDetail extends StatelessWidget {
  const EventDetail({super.key});

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
            'Event Detail',
            style: TextStyle(color: Colors.white),
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
                  //     'http://camasean.edu.kh/img/events/Vko1700446350.jpg',
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
                  'Conversation with Foreigners New Term',
                  style: TextStyle(
                    fontSize: 18,
                    color: primaryColor,
                  ),
                ),
                Divider(
                  color: primaryColor,
                  thickness: 2,
                ),
                Text(
                  "ថ្នាក់មូលដ្ឋានគ្រឹះភាសាអង់គ្លេស (Foundation English Class) ត្រូវបានបង្កើតឡើង ជាពិសេសសម្រាប់សិស្ស-និស្សិត ដែលមិនធ្លាប់បានរៀនភាសាអង់គ្លេសពីមុនមកសោះ ឬរៀនភាសាអង់គ្លេសបានតិចតួច។" +
                      "ការសិក្សាថ្នាក់មូលដ្ឋានគ្រឹះភាសាអង់គ្លេសនេះ សិស្ស-និស្សិត នឹងអាចទទួលបាននូវមាតិកាល្អៗជាច្រើនដូចជា៖" +
                      "- ការសន្ទនាប្រចាំថ្ងៃ" +
                      "- ការរាប់ និងរបៀបប្រើប្រាស់លេខ" +
                      "- ការប្រើវេយ្យករណ៍កម្រិតដំបូង" +
                      "- ការប្រកប និងប្រើប្រាស់វាក្យសព្ទទូទៅ។",
                  style: TextStyle(
                    fontSize: 14,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Date: December 06 to Jan 09, 2023',
                    style: TextStyle(
                      fontSize: 14,
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
                    'Time: 08:00 - 8:30 PM',
                    style: TextStyle(
                      fontSize: 14,
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
                    'Venue: CAM-ASEAN Olympic',
                    style: TextStyle(
                      fontSize: 14,
                      color: primaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Maps'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Link'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
