import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ProfileRowTwoColumn extends StatelessWidget {
  const ProfileRowTwoColumn({
    super.key,
    required this.leftLabel,
    required this.leftValue,
    required this.rightLabel,
    required this.rightValue,
  });

  final String leftLabel;
  final String leftValue;
  final String rightLabel;
  final String rightValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  leftLabel,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  leftValue,
                  style: TextStyle(
                    fontSize: 16,
                    color: primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  rightLabel,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  rightValue,
                  style: TextStyle(
                    fontSize: 16,
                    color: primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ProfileRowOneColumn extends StatelessWidget {
  const ProfileRowOneColumn({
    super.key,
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  label,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  value,
                  style: TextStyle(
                    fontSize: 16,
                    color: primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
