
import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemBuilder: (_, i) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color:
                          const Color(0XFF242424).withOpacity(0.05),
                      blurRadius: 15,
                      offset: const Offset(0, 5),
                      // spreadRadius: 8,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    categories[i].icon,
                  ),
                ),
              ),
              Text(
                categories[i].name,
                style: const TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
      ),
    );
  }
}
