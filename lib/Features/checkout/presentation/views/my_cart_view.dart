import 'package:flutter/material.dart';
import 'package:paymentapp/core/utils/styles.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'My Cart',
            style: Styles.textStyle25,
          ),
        ),
      ),
    );
  }
}
