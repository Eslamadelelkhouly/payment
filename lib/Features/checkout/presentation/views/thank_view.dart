import 'package:flutter/material.dart';
import 'package:paymentapp/Features/checkout/presentation/views/widgets/thank_view_body.dart';
import 'package:paymentapp/core/widgets/custom_appbar.dart';

class ThankView extends StatelessWidget {
  const ThankView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      body: Transform.translate(
        offset: Offset(0, -16),
        child: ThankViewBody(),
      ),
    );
  }
}
