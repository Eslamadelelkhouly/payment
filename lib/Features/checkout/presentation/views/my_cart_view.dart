import 'package:flutter/material.dart';
import 'package:paymentapp/Features/checkout/presentation/views/widgets/my_cart_view_body.dart';
import 'package:paymentapp/core/widgets/custom_appbar.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(title: 'My Cart'),
      body: const MyCartViewBody(),
    );
  }

  
}
