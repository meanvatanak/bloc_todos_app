import 'package:camasean/routes/route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    RootApp(),
  );
}

class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Root App',
      initialRoute: '/splash',
      onGenerateRoute: appRoute,
    );
  }
}
