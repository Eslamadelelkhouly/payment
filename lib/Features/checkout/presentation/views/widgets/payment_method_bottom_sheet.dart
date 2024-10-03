import 'package:flutter/material.dart';
import 'package:paymentapp/Features/checkout/presentation/views/widgets/custom_button_bloc_consumer.dart';
import 'package:paymentapp/Features/checkout/presentation/views/widgets/payment_method.dart';
import 'package:paymentapp/core/widgets/custom_button.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16),
          PaymentMethodListView(),
          SizedBox(height: 30),
          CustomButtomBlocConsumer(),
        ],
      ),
    );
  }
}
