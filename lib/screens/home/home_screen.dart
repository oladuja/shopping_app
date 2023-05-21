import 'package:flutter/material.dart';
import 'package:shopping_app/screens/home/check_out_screen.dart';

import '../../widgets/navigator_item.dart';
import 'account_screen.dart';
import 'explore_page.dart';

class HomeScreen extends StatefulWidget {
  static const String rouename = "home-screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  PageController pageController = PageController();

  void onTap(int index) {
    setState(() {
      currentPage = index;
      pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 150),
        curve: Curves.decelerate,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: PageView(
        onPageChanged: (value) {
          setState(() {
            currentPage = value;
          });
        },
        controller: pageController,
        children: [
          ExplorePage(mediaQuery: mediaQuery),
          const CheckOutScreen(),
           const AccountScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: const Color(0XFF242424).withOpacity(0.05),
              blurRadius: 20,
              offset: const Offset(0, -1),
              // spreadRadius: 8,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => onTap(0),
                  child: NavigatorItem(
                    text: 'Explore',
                    isSelected: (currentPage == 0) ? true : false,
                    image: 'assets/images/Icon_Explore.png',
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => onTap(1),
                  child: NavigatorItem(
                    text: 'Cart',
                    isSelected: (currentPage == 1) ? true : false,
                    image: 'assets/images/Icon_Cart.png',
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => onTap(2),
                  child: NavigatorItem(
                    text: 'Account',
                    isSelected: (currentPage == 2) ? true : false,
                    image: 'assets/images/Icon_User.png',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
