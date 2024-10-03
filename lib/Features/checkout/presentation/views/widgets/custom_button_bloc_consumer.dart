import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymentapp/Features/checkout/presentation/manager/cubit/payment_cubit.dart';
import 'package:paymentapp/Features/checkout/presentation/views/thank_view.dart';
import 'package:paymentapp/core/widgets/custom_button.dart';

class CustomButtomBlocConsumer extends StatelessWidget {
  const CustomButtomBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) {
                return ThankView();
              },
            ),
          );
        }
      },
      builder: (context, state) {
        return CustomButton(
          text: 'Continue',
          isLoading: state is PaymentLoading ? true : false,
        );
      },
    );
  }
}
