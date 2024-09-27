import 'package:flutter/material.dart';
import 'package:paymentapp/Features/checkout/presentation/views/widgets/paymeny_method_item.dart';

class PaymentMethodListView extends StatelessWidget {
  const PaymentMethodListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> paymentmethoditems = const [
      'assets/images/visa.svg',
      'assets/images/paypal.svg',
      'assets/images/epay.svg',
    ];
    return SizedBox(
      height: 62,
      child: ListView.builder(
          itemCount: paymentmethoditems.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return PaymentMethodItem(image: paymentmethoditems[index]);
          }),
    );
  }
}
