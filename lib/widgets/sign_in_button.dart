
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final String text;

  final String assetname;

  const SignInButton({
    super.key,
    required this.text,
    required this.assetname,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0XFFDDDDDD),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 5,
        ),
        child: Row(
          children: [
            Image.asset(
              assetname,
              height: 20,
              width: 20,
            ),
            const Spacer(),
            Text(text),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
