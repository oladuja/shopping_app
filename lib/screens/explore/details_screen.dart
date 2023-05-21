import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shopping_app/constants/app_color.dart';

import '../../models/item.dart';
import '../../widgets/custom_button_nav_bar.dart';

class DetailsScreen extends StatelessWidget {
  static const String routeName = 'details-screen';
  final Item item;

  const DetailsScreen({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 18,
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  child: Icon(
                    Icons.star_border,
                    color: Colors.black,
                  ),
                ),
              )
            ],
            expandedHeight: MediaQuery.of(context).size.height * 0.5,
            pinned: true,
            collapsedHeight: 150,
            automaticallyImplyLeading: false,
            flexibleSpace: Image.asset(
              item.image,
              fit: BoxFit.cover,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Details',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        item.details,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      const Text(
                        'Read more',
                        style: TextStyle(
                          color: AppColor.greenTextColor,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Reviews',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Write your',
                        style: TextStyle(
                          color: AppColor.greenTextColor,
                          fontSize: 14,
                        ),
                      ),
                      ...List<Widget>.generate(
                        3,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: ListTile(
                            leading: const CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage('assets/images/Avatar.png'),
                            ),
                            title: Row(
                              children: [
                                const Text(
                                  'Samuel Smith',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(width: 100),
                                ...List<Widget>.generate(
                                  Random().nextInt(5) + 1,
                                  (index) => const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 14,
                                  ),
                                ),
                              ],
                            ),
                            subtitle: const Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id rhoncus ipsum.',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: ContainerBottomNavBar(
        price: item.price.toString(),
        text: 'ADD',
        onPressed: () {},
      ),
    );
  }
}
