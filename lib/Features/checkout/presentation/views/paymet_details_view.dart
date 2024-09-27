import 'package:flutter/material.dart';
import 'package:paymentapp/Features/checkout/presentation/views/widgets/payment_details_view_body.dart';
import 'package:paymentapp/core/widgets/custom_appbar.dart';

class PaymetDetailsView extends StatelessWidget {
  const PaymetDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(
        title: 'Payment Details',
      ),
      body: PaymentDetailsViewBody(),
    );
  }
}
