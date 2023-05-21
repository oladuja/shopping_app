import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import '../constants/app_color.dart';

class CheckoutStage extends StatelessWidget {
  const CheckoutStage({
    super.key,
    required this.status,
  });

  final bool status;

  @override
  Widget build(BuildContext context) {
    return OutlinedDotIndicator(
      borderWidth: 1,
      size: 35,
      color: (status) ? AppColor.greenTextColor : Colors.grey,
      child: status
          ? Container(
              margin: const EdgeInsets.all(5),
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.greenTextColor,
              ),
            )
          : Container(),
    );
  }
}
