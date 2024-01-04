import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class Receipt extends StatelessWidget {
  const Receipt({Key? key}) : super(key: key);

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
            'Receipt',
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Receipt No: R34553',
                    style: TextStyle(
                      fontSize: 18,
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Divider(
                  color: secondaryColor,
                  thickness: 2,
                  height: 5,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Name:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'John Doe',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Gender:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Female',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Student ID:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'S-005687',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Level:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'GCP7',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Term:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Chinese Term 33',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Time:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '5:30 PM - 7:30 PM',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Room:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'B107',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Start Date:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '14-Jun-2023',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Paid:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '12-Jun-2023 2:44 PM',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Divider(
                  color: secondaryColor,
                  thickness: 2,
                  height: 5,
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Description: Tuition Fee',
                    style: TextStyle(
                      fontSize: 18,
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'QTY:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Price:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '\$ 190.00',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Memo:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Ref: 0047/22 &  Ref: SDP-2023',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Discount:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '20%',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Discount \$:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '\$ 0.00',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Discount Coupon \$:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '\$ 0.00',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Amount:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '\$ 152.00',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Divider(
                  color: secondaryColor,
                  thickness: 2,
                  height: 5,
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Description:',
                    style: TextStyle(
                      fontSize: 18,
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Microsoft License Fee (Chinese)',
                    style: TextStyle(
                      fontSize: 16,
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'QTY:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Price:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '\$ 2.00',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Memo:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '-',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Discount:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '20%',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Discount \$:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '\$ 0.00',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Discount Coupon \$:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '\$ 0.00',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Amount:',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '\$ 2.00',
                          style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Divider(
                  color: secondaryColor,
                  thickness: 2,
                  height: 5,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Grand Total: \$ 154.00',
                    style: TextStyle(
                      fontSize: 18,
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
