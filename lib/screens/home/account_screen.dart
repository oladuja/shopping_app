import 'package:flutter/material.dart';

import '../../widgets/profile_option.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top + 25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/img.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'David Spade',
                      style: TextStyle(
                        fontSize: 26,
                      ),
                    ),
                    Text('iamdavid@gmail.com')
                  ],
                ),
              ],
            ),
          ),
          const ProfileOption(
            imageUrl: 'assets/images/icons/Icon_Edit-Profile.png',
            text: 'Edit Profile',
          ),
          const ProfileOption(
            imageUrl: 'assets/images/icons/Icon_Location.png',
            text: 'Shipping Address',
          ),
          const ProfileOption(
            imageUrl: 'assets/images/icons/Icon_Wishlist.png',
            text: 'Wishlist',
          ),
          const ProfileOption(
            imageUrl: 'assets/images/icons/Icon_History.png',
            text: 'Order History',
          ),
          const ProfileOption(
            imageUrl: 'assets/images/icons/Icon_Order.png',
            text: 'Track Order',
          ),
          const ProfileOption(
            imageUrl: 'assets/images/icons/Icon_Payment.png',
            text: 'Cards',
          ),
          const ProfileOption(
            imageUrl: 'assets/images/icons/Icon_Alert.png',
            text: 'Notifications',
          ),
        ],
      ),
    );
  }
}
