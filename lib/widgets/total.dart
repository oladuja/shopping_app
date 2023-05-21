import 'package:flutter/material.dart';


class Total extends StatelessWidget {
  final String text, amount;
  const Total({
    super.key,
    required this.text,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Color(0XFFDDDDDD),
              ),
            ),
          ),
          Text(
            '\$$amount',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
