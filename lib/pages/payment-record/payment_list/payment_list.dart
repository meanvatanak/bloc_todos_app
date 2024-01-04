import 'package:camasean/widgets/payment_row.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class PaymentList extends StatelessWidget {
  const PaymentList({super.key});

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
            'Payment List',
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
                PaymentRow(
                  order: '1',
                  reciept: 'R34553',
                  date: '30-Aug-2023',
                ),
                PaymentRow(
                  order: '2',
                  reciept: 'R34553',
                  date: '30-Aug-2023',
                ),
                PaymentRow(
                  order: '3',
                  reciept: 'R34553',
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
