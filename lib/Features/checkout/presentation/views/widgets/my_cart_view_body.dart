import 'package:flutter/material.dart';
import 'package:paymentapp/Features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:paymentapp/Features/checkout/presentation/views/widgets/total_price.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Image.asset('assets/images/Group 6.png'),
          const SizedBox(height: 25),
          OrderInfoItem(
            text: 'Order Subtotal',
            value: '\$42.97',
          ),
          const SizedBox(height: 3),
          OrderInfoItem(
            text: 'Discount',
            value: '\$0',
          ),
          const SizedBox(height: 3),
          OrderInfoItem(
            text: 'Shipping',
            value: '\$8',
          ),
          const Divider(
            height: 34,
            thickness: 2,
          ),
          TotalPrice(text: 'Total', value: '\$50.97'),
        ],
      ),
    );
  }
}
