import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class PaymentRecords extends StatelessWidget {
  const PaymentRecords({super.key});

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
            'Payment Records',
            style: TextStyle(color: whiteColor),
          ),
        ),
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.95,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        context, '/payment-record/payment-list');
                  },
                  child: Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Center(
                          child: Text(
                            'Payment History',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(200),
                            border: Border.all(
                              color: secondaryColor,
                              width: 5,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Icon(
                              Icons.payment,
                              size: 70,
                              color: whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 10,
                thickness: 5,
                color: primaryColor,
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        context, '/payment-record/other-payment-list');
                  },
                  child: Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Center(
                          child: Text(
                            'Other Payment History',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(200),
                            border: Border.all(
                              color: secondaryColor,
                              width: 5,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Icon(
                              Icons.paid_rounded,
                              size: 70,
                              color: whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
