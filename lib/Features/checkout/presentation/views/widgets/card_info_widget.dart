import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paymentapp/core/utils/styles.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 17),
      width: 305,
      height: 73,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/logomastercard.svg'),
          const SizedBox(
            width: 23,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Credit Card',
                style: Styles.textstyle18,
              ),
              Text(
                'MasterCard **78',
                style: Styles.textstyle18,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
