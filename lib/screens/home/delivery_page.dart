import 'package:flutter/material.dart';
import 'package:shopping_app/screens/home/summary_page.dart';

import '../../constants/app_color.dart';
import '../../widgets/checkout_stage.dart';
import '../../widgets/delivery_list_tile.dart';
import '../../widgets/expnaded_button_navigation_button.dart';

enum Delivery { standardDelivery, nextDayDelivery, nominatedDelivery }

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  final List<String> checkoutStage = [
    'Delivery',
    'Address',
    'Payments',
  ];

  int stage = 0;

  List<String> step = [
    'Delivery',
  ];

  int pageIndex = 0;

  Delivery? groupValue = Delivery.standardDelivery;

  bool saveDetailValue = false;

  TextEditingController nameOfCard = TextEditingController();
  TextEditingController cardNumber = TextEditingController();
  TextEditingController expiryDate = TextEditingController();
  TextEditingController cvv = TextEditingController();
  TextEditingController street = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController country = TextEditingController();

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
          'Checkout',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CheckoutStage(status: step.contains('Delivery')),
                      Expanded(
                          child: Divider(
                        color: (pageIndex > 0)
                            ? AppColor.greenTextColor
                            : Colors.grey,
                      )),
                      CheckoutStage(status: step.contains('Address')),
                      Expanded(
                          child: Divider(
                        color: (pageIndex > 1)
                            ? AppColor.greenTextColor
                            : Colors.grey,
                      )),
                      CheckoutStage(status: step.contains('Payments')),
                    ],
                  ),
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List<Widget>.generate(
                    checkoutStage.length,
                    (index) => Text(
                      checkoutStage[index],
                      style: TextStyle(
                        color: (index == stage) ? Colors.black : Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              if (pageIndex == 0) delivery(),
              if (pageIndex == 1) address(),
              if (pageIndex == 2) payment(),
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
              child: (pageIndex == 0)
                  ? Container()
                  : Container(
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
                        onPressed: () {
                          setState(() {
                            if (pageIndex == 1) {
                              step.remove('Address');
                            } else if (pageIndex == 2) {
                              step.remove('Payments');
                            }
                            pageIndex--;
                          });
                        },
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
              text: 'NEXT',
              onPressed: () {
                if (pageIndex + 1 > 2) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const SummaryPage(),
                    ),
                  );
                }
                setState(() {
                  if (pageIndex < 2) {
                    pageIndex++;
                    if (pageIndex == 1) {
                      step.add('Address');
                    } else if (pageIndex == 2) {
                      step.add('Payments');
                    }
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Column payment() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Name on Card',
          style: TextStyle(
            fontSize: 14,
            color: Color(0XFF929292),
          ),
        ),
        TextField(
          controller: nameOfCard,
          keyboardType: TextInputType.name,
          cursorColor: AppColor.greenTextColor,
          decoration: const InputDecoration(
            enabled: true,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.greenTextColor,
              ),
            ),
            hintStyle: TextStyle(
              color: Color(0XFF929292),
            ),
            isDense: true,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.greenTextColor,
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        const Text(
          'Card Number',
          style: TextStyle(
            fontSize: 14,
            color: Color(0XFF929292),
          ),
        ),
        TextField(
          controller: cardNumber,
          keyboardType: TextInputType.number,
          cursorColor: AppColor.greenTextColor,
          decoration: const InputDecoration(
            enabled: true,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.greenTextColor,
              ),
            ),
            hintStyle: TextStyle(
              color: Color(0XFF929292),
            ),
            isDense: true,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.greenTextColor,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Expiry Date',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0XFF929292),
                    ),
                  ),
                  TextField(
                    controller: expiryDate,
                    keyboardType: TextInputType.streetAddress,
                    cursorColor: AppColor.greenTextColor,
                    decoration: const InputDecoration(
                      enabled: true,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.greenTextColor,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Color(0XFF929292),
                      ),
                      isDense: true,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.greenTextColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 35),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'CVV',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0XFF929292),
                    ),
                  ),
                  TextField(
                    controller: cvv,
                    keyboardType: TextInputType.streetAddress,
                    cursorColor: AppColor.greenTextColor,
                    decoration: const InputDecoration(
                      enabled: true,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.greenTextColor,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Color(0XFF929292),
                      ),
                      isDense: true,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.greenTextColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),
        Row(
          children: [
            Checkbox(
                activeColor: AppColor.greenTextColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                value: saveDetailValue,
                onChanged: (v) {
                  setState(() {
                    saveDetailValue = v!;
                  });
                }),
            const Text('Save this card details')
          ],
        ),
      ],
    );
  }

  Column address() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Street',
          style: TextStyle(
            fontSize: 14,
            color: Color(0XFF929292),
          ),
        ),
        TextField(
          controller: street,
          keyboardType: TextInputType.streetAddress,
          cursorColor: AppColor.greenTextColor,
          decoration: const InputDecoration(
            enabled: true,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.greenTextColor,
              ),
            ),
            hintStyle: TextStyle(
              color: Color(0XFF929292),
            ),
            isDense: true,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.greenTextColor,
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        const Text(
          'City',
          style: TextStyle(
            fontSize: 14,
            color: Color(0XFF929292),
          ),
        ),
        TextField(
          controller: city,
          keyboardType: TextInputType.streetAddress,
          cursorColor: AppColor.greenTextColor,
          decoration: const InputDecoration(
            enabled: true,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.greenTextColor,
              ),
            ),
            hintStyle: TextStyle(
              color: Color(0XFF929292),
            ),
            isDense: true,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.greenTextColor,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'State',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0XFF929292),
                    ),
                  ),
                  TextField(
                    controller: state,
                    keyboardType: TextInputType.streetAddress,
                    cursorColor: AppColor.greenTextColor,
                    decoration: const InputDecoration(
                      enabled: true,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.greenTextColor,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Color(0XFF929292),
                      ),
                      isDense: true,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.greenTextColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 35),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Country',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0XFF929292),
                    ),
                  ),
                  TextField(
                    controller: country,
                    keyboardType: TextInputType.streetAddress,
                    cursorColor: AppColor.greenTextColor,
                    decoration: const InputDecoration(
                      enabled: true,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.greenTextColor,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Color(0XFF929292),
                      ),
                      isDense: true,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.greenTextColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }

  Column delivery() {
    return Column(
      children: [
        deliveryListTile(
          title: 'Standard Delivery',
          subtitle: 'Order will be dilvered between 3 - 5 buiness days',
          value: Delivery.standardDelivery,
          groupValue: groupValue!,
          onChanged: (v) {
            setState(() {
              groupValue = v!;
            });
          },
        ),
        deliveryListTile(
          title: 'Next Day Delivery',
          subtitle:
              'Place your order before 6pm and your itms will be delivered the next day',
          value: Delivery.nextDayDelivery,
          groupValue: groupValue!,
          onChanged: (v) {
            setState(() {
              groupValue = v!;
            });
          },
        ),
        deliveryListTile(
          title: 'Nominated Delivery',
          subtitle:
              'Pick a particular date from the calendar and order will be delivered on selected date',
          value: Delivery.nominatedDelivery,
          groupValue: groupValue!,
          onChanged: (v) {
            setState(() {
              groupValue = v!;
            });
          },
        ),
      ],
    );
  }
}
