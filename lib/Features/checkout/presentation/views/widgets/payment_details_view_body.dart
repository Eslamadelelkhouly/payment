import 'package:flutter/material.dart';
import 'package:paymentapp/Features/checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:paymentapp/Features/checkout/presentation/views/widgets/payment_method.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PaymentMethodListView(),
          CustomCreditCard(),
        ],
      ),
    );
  }
}
