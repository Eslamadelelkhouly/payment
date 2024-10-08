import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymentapp/Features/checkout/data/repos/checkout_repo_impl.dart';
import 'package:paymentapp/Features/checkout/presentation/manager/cubit/payment_cubit.dart';
import 'package:paymentapp/Features/checkout/presentation/views/widgets/payment_method_bottom_sheet.dart';
import 'package:paymentapp/core/widgets/custom_button.dart';
import 'package:paymentapp/Features/checkout/presentation/views/widgets/order_info_item.dart';
import 'package:paymentapp/Features/checkout/presentation/views/widgets/total_price.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Expanded(child: Image.asset('assets/images/Group 6.png')),
          const SizedBox(height: 25),
          const OrderInfoItem(
            text: 'Order Subtotal',
            value: '\$42.97',
          ),
          const SizedBox(height: 3),
          const OrderInfoItem(
            text: 'Discount',
            value: '\$0',
          ),
          const SizedBox(height: 3),
          const OrderInfoItem(
            text: 'Shipping',
            value: '\$8',
          ),
          const Divider(
            height: 34,
            thickness: 2,
          ),
          const TotalPrice(text: 'Total', value: '\$50.97'),
          CustomButton(
            text: 'Complete Payment',
            onTap: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  context: context,
                  builder: (context) {
                    return BlocProvider(
                      create: (context) => PaymentCubit(CheckoutRepoImpl()),
                      child: PaymentMethodBottomSheet(),
                    );
                  });
            },
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
