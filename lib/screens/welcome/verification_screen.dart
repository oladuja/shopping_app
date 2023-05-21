import 'package:flutter/material.dart';

import '../../widgets/app_button.dart';
import '../../widgets/box_container_shadow.dart';
import '../home/home_screen.dart';

class VerificatonScreen extends StatelessWidget {
  static const String routeName = 'verification-screen';

  const VerificatonScreen({super.key});

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
                        'Verification',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'A link has been sent to your email address click on the link to verify',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0XFF929292),
                        ),
                      ),
                      const SizedBox(height: 20),
                      AppButton(
                        onPressed: () => Navigator.of(context)
                            .pushNamed(HomeScreen.rouename),
                        value: 'CONTINUE',
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
