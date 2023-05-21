import 'package:flutter/material.dart';

import 'details_widget.dart';
import 'expnaded_button_navigation_button.dart';

class ContainerBottomNavBar extends StatelessWidget {
  final void Function()? onPressed;

  const ContainerBottomNavBar({
    super.key,
    required this.price,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: const Color(0XFF242424).withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, -1),
            // spreadRadius: 8,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            DetailsWidget(
              price: price,
            ),
            ExpandedButtomNavigationButton(
              text: text,
              onPressed: onPressed,
            ),
          ],
        ),
      ),
    );
  }
}
