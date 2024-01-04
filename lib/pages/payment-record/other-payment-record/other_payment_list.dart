import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../widgets/other_payment_row.dart';

class OtherPaymentList extends StatelessWidget {
  const OtherPaymentList({super.key});

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
            'Other Payment List',
            style: TextStyle(color: whiteColor),
          ),
        ),
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                OtherPaymentRow(
                  order: '1',
                  receipt: 'R34553',
                  date: '30-Aug-2023',
                ),
                OtherPaymentRow(
                  order: '2',
                  receipt: 'R34553',
                  date: '30-Aug-2023',
                ),
                OtherPaymentRow(
                  order: '3',
                  receipt: 'R34553',
                  date: '30-Aug-2023',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
