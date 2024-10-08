import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymentapp/Features/checkout/data/models/payment_intent_input_model.dart';
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
        if (state is PaymentFailure) {
          Navigator.of(context).pop();
          SnackBar snackBar = SnackBar(content: Text(state.errorMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomButton(
          onTap: () {
            PaymentIntentInputModel paymentIntentInputModel =
                PaymentIntentInputModel(
              amount: '100',
              currency: 'USD',
              customerId: 'cus_Qy33wBJR8UIGG2',
            );
            BlocProvider.of<PaymentCubit>(context).makePayment(
              paymentIntentInputModel: paymentIntentInputModel,
            );
          },
          text: 'Continue',
          isLoading: state is PaymentLoading ? true : false,
        );
      },
    );
  }
}
