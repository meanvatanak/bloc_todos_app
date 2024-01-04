import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ListTileBook extends StatelessWidget {
  const ListTileBook({
    super.key,
    required this.title,
    required this.author,
    required this.genre,
    required this.publishedYear,
    required this.pages,
    required this.publisher,
    required this.imagePath,
  });

  final String title;
  final String author;
  final String genre;
  final String publishedYear;
  final String pages;
  final String publisher;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 170,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(10),
              //   child: SizedBox.fromSize(
              //     child: Image.network(
              //       imagePath,
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),

              CachedNetworkImage(
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

              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Author: $author',
                      style: TextStyle(
                        fontSize: 12,
                        color: primaryColor,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Genre: $genre',
                      style: TextStyle(
                        fontSize: 12,
                        color: primaryColor,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Published Year: $publishedYear',
                      style: TextStyle(
                        fontSize: 12,
                        color: primaryColor,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Pages: $pages',
                      style: TextStyle(
                        fontSize: 12,
                        color: primaryColor,
                      ),
                    ),
                    // SizedBox(height: 10),
                    // Text(
                    //   'Publisher: $publisher',
                    //   style: TextStyle(
                    //     fontSize: 12,
                    //     color: primaryColor,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
