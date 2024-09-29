import 'package:flutter/material.dart';
import 'package:paymentapp/Features/checkout/presentation/views/widgets/payment_item_info.dart';
import 'package:paymentapp/core/utils/styles.dart';

class ThankCard extends StatelessWidget {
  const ThankCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Color(0xFFD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 50 + 16,
          left: 22,
          right: 22,
        ),
        child: Column(
          children: [
            Text(
              'Thank You',
              style: Styles.textStyle25,
              textAlign: TextAlign.center,
            ),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: Styles.textStyle20,
            ),
            const SizedBox(height: 42),
            PaymentItemInfo(
              title: 'Date',
              value: '01/24/2023',
            ),
            const SizedBox(height: 20),
            PaymentItemInfo(
              title: 'Time',
              value: '10:15 AM',
            ),
            const SizedBox(height: 20),
            PaymentItemInfo(
              title: 'To',
              value: 'Sam Louis',
            ),
          ],
        ),
      ),
    );
  }
}
