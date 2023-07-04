import 'package:flutter/material.dart';

import '../../constants/app_color.dart';
import '../../widgets/expnaded_button_navigation_button.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: const Text(
          'Summary',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                title: Text(
                  'Shipping Address',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: Text(
                  '21, Alex Davidson Avenue, Opposite Omegatron, Vicent Smith Quarters, Victoria Island, Lagos, Nigeria',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Change',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColor.greenTextColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  color: Colors.grey.shade200,
                ),
              ),
              ListTile(
                  title: const Text(
                    'Payment',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Image.asset(
                        'assets/images/Icon_MasterCard.png',
                        width: 60,
                        height: 40,
                      ),
                      const SizedBox(width: 20),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Master Card',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '****  ****  ****  4543',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )
                        ],
                      )
                    ],
                  )),
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Change',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColor.greenTextColor,
                  ),
                ),
              ),
            ],
          ),
        ),
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
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(8.0),
                width: 145,
                height: 50,
                color: Colors.white,
                child: TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        side: BorderSide(
                          color: AppColor.greenTextColor,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text(
                    'BACK',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            ExpandedButtomNavigationButton(
              text: 'PAY',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
