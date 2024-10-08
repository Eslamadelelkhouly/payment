import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paymentapp/Features/checkout/presentation/views/widgets/card_info_widget.dart';
import 'package:paymentapp/Features/checkout/presentation/views/widgets/payment_item_info.dart';
import 'package:paymentapp/Features/checkout/presentation/views/widgets/total_price.dart';
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
            const Divider(
              height: 60,
              thickness: 2,
            ),
            TotalPrice(text: 'Total', value: '\$50.97'),
            SizedBox(height: 30),
            const CardInfoWidget(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  FontAwesomeIcons.barcode,
                  size: 64,
                ),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1.50,
                        color: Color(0xFF34A853),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      textAlign: TextAlign.center,
                      style: Styles.textStyle24.copyWith(
                        color: Color(0xFF34A853),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ((MediaQuery.of(context).size.height * .2 + 20) / 2) - 29,
            ),
          ],
        ),
      ),
    );
  }
}
