import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              children: [
                Center(
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      //color white transparent 50%
                      color: whiteColor.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(200),
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Center(
                      child: Container(
                        width: 275,
                        height: 275,
                        decoration: BoxDecoration(
                          color: whiteColor.withOpacity(0.50),
                          borderRadius: BorderRadius.circular(150),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: Center(
                      child: Container(
                        width: 250,
                        height: 250,
                        decoration: BoxDecoration(
                          color: whiteColor.withOpacity(0.75),
                          borderRadius: BorderRadius.circular(150),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 36.0),
                    child: Center(
                      child: Container(
                        width: 225,
                        height: 225,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(150),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(35.0),
                          child: Image.asset('assets/logo/logo.png'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 100),
          Text(
            'CAM-ASEAN',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: whiteColor,
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                "Our Heart's in Education",
                style: TextStyle(
                  fontSize: 18,
                  color: whiteColor,
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
            child: Text('Home'),
          ),
        ],
      ),
    );
  }
}
