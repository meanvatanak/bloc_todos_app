import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class EventRow extends StatelessWidget {
  const EventRow({
    super.key,
    required this.imagePath,
    required this.title,
    required this.time,
    required this.date,
  });

  final String imagePath;
  final String title;
  final String time;
  final String date;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/event-detail');
      },
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: 120,
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
              child: CachedNetworkImage(
                imageUrl: imagePath,
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
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Time: $time',
                  style: TextStyle(
                    fontSize: 14,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Date: $date',
                  style: TextStyle(
                    fontSize: 14,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
