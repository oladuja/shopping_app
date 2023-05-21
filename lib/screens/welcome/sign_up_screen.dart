import 'package:flutter/material.dart';

import '../../constants/app_color.dart';
import '../../widgets/app_button.dart';
import '../../widgets/box_container_shadow.dart';
import 'verification_screen.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = 'sign-up-screen';

  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: mediaQuery.viewPadding.top + 70,
              ),
              IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 14,
                ),
              ),
              const SizedBox(height: 20),
              BoxContainerShadow(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0XFF929292),
                        ),
                      ),
                      const TextField(
                        keyboardType: TextInputType.name,
                        cursorColor: AppColor.greenTextColor,
                        decoration: InputDecoration(
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
                      const Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0XFF929292),
                        ),
                      ),
                      const TextField(
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: AppColor.greenTextColor,
                        decoration: InputDecoration(
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
                      const Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0XFF929292),
                        ),
                      ),
                      const TextField(
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: AppColor.greenTextColor,
                        decoration: InputDecoration(
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
                      AppButton(
                        onPressed: () => Navigator.of(context)
                            .pushNamed(VerificatonScreen.routeName),
                        value: 'SIGN UP',
                      ),
                    ],
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
