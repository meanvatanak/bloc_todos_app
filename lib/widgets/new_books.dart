import 'package:flutter/material.dart';

import '../constants/constants.dart';

class NewBookCard extends StatelessWidget {
  const NewBookCard({
    super.key,
    required this.index,
    required this.title,
    required this.author,
    required this.imagePath,
  });

  final int index;
  final String title;
  final String author;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      width: 230,
      // height: 480,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox.fromSize(
                    child: Image.network(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 5,
                right: 15,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.new_releases_outlined,
                    color: primaryColor,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.person,
                  color: Colors.yellow,
                ),
                Text(
                  //random number
                  author,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
