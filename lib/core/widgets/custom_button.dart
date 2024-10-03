import 'package:flutter/material.dart';
import 'package:paymentapp/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    required this.text,
    this.isLoading = false,
  });
  final void Function()? onTap;
  final String text;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: isLoading
              ? CircularProgressIndicator()
              : Text(
                  text,
                  style: Styles.textStyle22,
                ),
        ),
        width: double.infinity,
        height: 73,
        decoration: ShapeDecoration(
          color: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
