import 'package:camasean/constants/constants.dart';
import 'package:flutter/material.dart';

class OtherPaymentRow extends StatelessWidget {
  const OtherPaymentRow({
    Key? key,
    required this.order,
    required this.receipt,
    required this.date,
  }) : super(key: key);

  final String order;
  final String receipt;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: const EdgeInsets.all(8),
      child: ListTile(
          leading: CircleAvatar(
            backgroundColor: primaryColor,
            child: Text(
              order,
              style: TextStyle(color: whiteColor),
            ),
          ),
          title: Text(receipt),
          subtitle: Text('Paid: $date'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            // go to payment detail page
            Navigator.pushNamed(
              context,
              '/payment-record/other-payment-list/other-payment-detail',
            );
          }),
    );
  }
}
