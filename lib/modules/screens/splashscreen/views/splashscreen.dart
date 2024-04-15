import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.offAndToNamed('/login');
    });
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    return const Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(
                'assets/Mobile login.gif',
              ),
            ),
            Text(
              "SPLASH",
              style: TextStyle(
                fontSize: 32,
                letterSpacing: 3,
                fontWeight: FontWeight.bold,
                wordSpacing: 5,
              ),
            ),
          ],
        ),
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     const Expanded(
        //       flex: 10,
        //       child: Image(
        //         image: AssetImage(
        //           'assets/splashscreen/Mobile login.gif',
        //         ),
        //       ),
        //     ),
        //     Expanded(
        //       child: Text(
        //         "SPLASH",
        //         style: TextStyle(
        //           fontSize: 32,
        //           letterSpacing: 3,
        //           fontWeight: FontWeight.bold,
        //           wordSpacing: 5,
        //           color: primaryTextColor,
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
