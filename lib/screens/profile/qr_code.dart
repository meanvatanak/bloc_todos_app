import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QRCode extends StatelessWidget {
  const QRCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Support Via ABA"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "assets/img/qr_code/qr_code_aba.jpg",
                width: double.infinity,
              ),
            ),
            SizedBox(height: 20),
            Text('Account Name: Mean Vatanak', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Text('Account Number: 000320300', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
