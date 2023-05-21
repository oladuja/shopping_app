import 'package:flutter/material.dart';

import '../constants/app_color.dart';
import '../screens/home/delivery_page.dart';

ListTile deliveryListTile(
    {required String title,
    required String subtitle,
    required Delivery value,
    required Delivery groupValue,
    required void Function(Delivery?)? onChanged}) {
  return ListTile(
    title: Text(
      title,
      style: const TextStyle(
        fontSize: 18,
      ),
    ),
    subtitle: Text(
      subtitle,
      style: const TextStyle(
        fontSize: 14,
      ),
    ),
    isThreeLine: true,
    trailing: Radio(
      fillColor: MaterialStateProperty.all(AppColor.greenTextColor),
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
    ),
  );
}
