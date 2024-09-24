import 'package:flutter/material.dart';
import 'package:paymentapp/core/utils/styles.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key, required this.text, required this.value});
  final String text, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          textAlign: TextAlign.center,
          style: Styles.textstyle18,
        ),
        Spacer(),
        Text(
          value,
          textAlign: TextAlign.center,
          style: Styles.textstyle18,
        ),
      ],
    );
  }
}
