import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';
import 'screens/welcome/sign_in_screen.dart';
import 'screens/welcome/sign_up_screen.dart';
import 'screens/welcome/verification_screen.dart';

void main() => runApp(const ShoppingApp());

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      initialRoute: SignInScreen.routeName,
      routes: {
        SignInScreen.routeName: (_) => const SignInScreen(),
        HomeScreen.rouename: (_) => const HomeScreen(),
        SignUpScreen.routeName: (_) => const SignUpScreen(),
        VerificatonScreen.routeName: (_) => const VerificatonScreen(),
      },
    );
  }
}
