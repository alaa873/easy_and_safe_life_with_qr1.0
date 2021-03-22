import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:easy_and_safe_life_with_qr/chat/view/all_chats.dart';
import 'package:easy_and_safe_life_with_qr/chat/view/single_chat.dart';
import 'package:easy_and_safe_life_with_qr/login/view/login_screen.dart';
import 'package:easy_and_safe_life_with_qr/onboarding_screen.dart';
import 'package:easy_and_safe_life_with_qr/sign_up/view/sign_up_screen.dart';
import 'package:easy_and_safe_life_with_qr/splash_screen.dart';
import './helpers/constants.dart';
import './home/view/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: KMainColor),
      getPages: [
        GetPage(
          name: '/',
          page: () => SplashScreen(),
        ),
        GetPage(
          name: OnBoardingScreen.routeName,
          page: () => OnBoardingScreen(),
        ),
        GetPage(
          name: LoginScreen.routeName,
          page: () => LoginScreen(),
        ),
        GetPage(
          name: SignUpScreen.routeName,
          page: () => SignUpScreen(),
        ),
        GetPage(
          name: HomeScreen.routeName,
          page: () => HomeScreen(),
        ),
        GetPage(
          name: AllChats.routeName,
          page: () => AllChats(),
        ),
        GetPage(
          name: SingleChat.routeName,
          page: () => SingleChat(),
        ),
      ],
    );
  }
}
