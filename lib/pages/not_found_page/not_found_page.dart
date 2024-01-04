import 'package:camasean/constants/constants.dart';
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Not Found Page')),
        backgroundColor: redColor,
      ),
      body: Center(
        child: Text('Not Found Page'),
      ),
    );
  }
}
