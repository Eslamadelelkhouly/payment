import 'package:flutter/material.dart';
import 'package:paymentapp/Features/checkout/presentation/views/widgets/paymeny_method_item.dart';

class PaymentMethodListView extends StatefulWidget {
  const PaymentMethodListView({super.key});

  @override
  State<PaymentMethodListView> createState() => _PaymentMethodListViewState();
}

class _PaymentMethodListViewState extends State<PaymentMethodListView> {
  int activeindex = 0;
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
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  activeindex = index;
                  setState(() {});
                },
                child: PaymentMethodItem(
                  isActive: activeindex == index,
                  image: paymentmethoditems[index],
                ),
              ),
            );
          }),
    );
  }
}
