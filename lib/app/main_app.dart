import 'package:advanceproje/controller/onboarding_controller.dart';
import 'package:advanceproje/core/theme/theme_manager.dart';
import 'package:advanceproje/view/screen/background.dart';
import 'package:advanceproje/view/screen/login_screen.dart';
import 'package:advanceproje/view/screen/onboarding_screen.dart';
import 'package:advanceproje/view/screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class MainApp extends StatelessWidget {
  MainApp._internal();
  static final MainApp _instance = MainApp._internal();
  factory MainApp() => _instance;
  OnboardingControllerImp s1 = Get.put(OnboardingControllerImp());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.lightTheme,
      home: OnboardingScreen(),
    );
  }
}
