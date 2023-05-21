import 'package:flutter/material.dart';

import '../constants/app_color.dart';
import '../models/item.dart';

class CartItem extends StatelessWidget {
  final Item item;
  const CartItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Dismissible(
        onDismissed: (direction) {},
        secondaryBackground: Container(
          color: Colors.red,
          alignment: Alignment.centerRight,
          child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(
              Icons.delete_outline,
              size: 28,
              color: Colors.white,
            ),
          ),
        ),
        background: Container(
          alignment: Alignment.centerLeft,
          color: const Color(0XFFFFC107),
          child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(
              Icons.star,
              size: 28,
              color: Colors.white,
            ),
          ),
        ),
        key: ObjectKey(item),
        child: SizedBox(
          height: 120,
          width: double.infinity,
          child: Row(
            children: [
              Image.asset(
                item.image,
                fit: BoxFit.cover,
                height: 120,
                width: 120,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      "\$${item.price}",
                      style: const TextStyle(
                        color: AppColor.greenTextColor,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      color: Colors.grey.withOpacity(0.06),
                      width: 90,
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '+    1    -',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
