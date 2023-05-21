import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class AppButton extends StatelessWidget {
  final String value;

  final void Function()? onPressed;

  const AppButton({
    super.key,
    required this.value,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 60,
        height: 45,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: AppColor.greenTextColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            value,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
