import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  const BookCover({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox.fromSize(
          child: CachedNetworkImage(
            imageUrl: imagePath,
            imageBuilder: (context, imageProvider) => ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
            placeholder: (context, url) => CircularProgressIndicator.adaptive(),
            errorWidget: (context, url, error) {
              print("Error loading image: $error");
              return Icon(Icons.error);
            },
          ),
        ),
      ),
    );
  }
}
