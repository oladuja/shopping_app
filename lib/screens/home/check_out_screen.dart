import 'package:flutter/material.dart';

import '../../models/item.dart';
import '../../widgets/cart_item.dart';
import '../../widgets/custom_button_nav_bar.dart';
import '../../widgets/total.dart';
import 'delivery_page.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ...List<Widget>.generate(
            items.length,
            (index) => CartItem(
              item: items[index],
            ),
          ),
          const Divider(
            color: Color(0XFFDDDDDD),
          ),
          Total(
            text: 'Sub Total',
            amount: 950.toString(),
          ),
          Total(
            text: 'Tax',
            amount: 50.toString(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                enabled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.15),
                  ),
                ),
                isDense: true,
                hintText: 'Enter Voucher Code',
                hintStyle: TextStyle(
                  color: const Color(0XFF707070).withOpacity(0.6),
                  fontSize: 16,
                ),
                suffixIcon: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'APPLY',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.15),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: ContainerBottomNavBar(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const DeliveryPage(),
          ),
        ),
        price: 1000.toString(),
        text: 'CHECK OUT',
      ),
    );
  }
}
