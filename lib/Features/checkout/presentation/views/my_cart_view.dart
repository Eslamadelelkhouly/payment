import 'package:flutter/material.dart';
import 'package:paymentapp/Features/checkout/presentation/views/widgets/my_cart_view_body.dart';
import 'package:paymentapp/core/utils/styles.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: const Text(
          textAlign: TextAlign.center,
          'My Cart',
          style: Styles.textStyle25,
        ),
      ),
      body: const MyCartViewBody(),
    );
  }
}
