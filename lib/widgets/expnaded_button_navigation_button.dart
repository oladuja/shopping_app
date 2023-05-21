import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class ExpandedButtomNavigationButton extends StatelessWidget {
  final String text;

  final void Function()? onPressed;

  const ExpandedButtomNavigationButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        width: 145,
        height: 50,
        color: AppColor.greenTextColor,
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
