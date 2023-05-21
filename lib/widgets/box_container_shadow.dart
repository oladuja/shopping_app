import 'package:flutter/material.dart';

class BoxContainerShadow extends StatelessWidget {
  final Widget child;

  const BoxContainerShadow({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: const Color(0XFF242424).withOpacity(0.05),
              blurRadius: 15,
              offset: const Offset(0, 5),
              // spreadRadius: 8,
            ),
          ],
        ),
        child: child);
  }
}
