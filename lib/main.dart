import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:paymentapp/Features/checkout/presentation/views/my_cart_view.dart';
import 'package:paymentapp/core/utils/api_keys.dart';

void main() {
  Stripe.publishableKey = ApiKeys.publishableKey;
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}

// paymentIntentModel =  paymentIntentObject create payment intent(amount,currency , customerId)
// create ephemeral_keys(stripeVersion, customerId)
// init payment sheet (marchetDisplayName , intentClientSecret , ephemeral_keys secret)
// presnet paymentsheet
