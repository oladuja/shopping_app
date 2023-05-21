import 'package:flutter/material.dart';

import '../../constants/app_color.dart';
import '../../widgets/app_button.dart';
import '../../widgets/box_container_shadow.dart';
import '../../widgets/sign_in_button.dart';
import '../home/home_screen.dart';
import 'sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  static const String routeName = 'sign-in-screen';

  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              SizedBox(
                height: mediaQuery.viewPadding.top + 100,
              ),
              BoxContainerShadow(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Welcome',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.of(context)
                                .pushNamed(SignUpScreen.routeName),
                            child: const Text(
                              'SIGN UP',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColor.greenTextColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'Sign in to Continue',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0XFF929292),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
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
                      const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      AppButton(
                        onPressed: () => Navigator.of(context)
                            .pushNamed(HomeScreen.rouename),
                        value: 'SIGN IN',
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  '-OR-',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SignInButton(
                assetname: 'assets/images/Icon_Facebook.png',
                text: 'Sign In with Facebook',
              ),
              const SizedBox(height: 15),
              const SignInButton(
                assetname: 'assets/images/icons8_Google_2.png',
                text: 'Sign In with Google',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
