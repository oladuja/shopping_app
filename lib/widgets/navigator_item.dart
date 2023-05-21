import 'package:flutter/material.dart';

class NavigatorItem extends StatelessWidget {
  final String text;
  final bool isSelected;
  final String image;

  const NavigatorItem({
    super.key,
    required this.text,
    required this.isSelected,
    required this.image,
  });

  @override
  Widget build(BuildContext context) => (!isSelected)
      ? Image.asset(
          image,
          height: 20,
          width: 20,
        )
      : Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const CircleAvatar(
              backgroundColor: Colors.black,
              radius: 2,
            )
          ],
        );
}
