import 'package:flutter/material.dart';

class ThankCard extends StatelessWidget {
  const ThankCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Color(0xFFD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
