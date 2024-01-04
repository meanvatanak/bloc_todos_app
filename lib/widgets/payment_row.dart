import 'package:camasean/constants/constants.dart';
import 'package:flutter/material.dart';

class PaymentRow extends StatelessWidget {
  const PaymentRow({
    super.key,
    required this.order,
    required this.reciept,
    required this.date,
  });

  final String order;
  final String reciept;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: primaryColor,
          child: Text(order, style: const TextStyle(color: whiteColor)),
        ),
        title: Text(reciept),
        subtitle: Text('Paid: $date'),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.pushNamed(
            context,
            '/payment-record/payment-list/payment-detail',
          );
        },
      ),
    );
  }
}
