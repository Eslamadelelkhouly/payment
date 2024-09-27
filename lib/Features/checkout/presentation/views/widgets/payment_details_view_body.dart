import 'package:flutter/material.dart';
import 'package:paymentapp/Features/checkout/presentation/views/widgets/payment_method.dart';
import 'package:paymentapp/Features/checkout/presentation/views/widgets/paymeny_method_item.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PaymentMethodListView(),
      ],
    );
  }
}
