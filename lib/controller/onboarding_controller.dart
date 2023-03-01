import 'package:advanceproje/core/data/onboarding_data.dart';
import 'package:advanceproje/view/screen/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class OnboardingController extends GetxController {
  next();
  skip();
  onPageChange(int pageIndex);
}

class OnboardingControllerImp extends OnboardingController {
  late PageController pageController;
  int currentPage = 0;
  @override
  next() {
    if (currentPage < OnboardingData.onboardingInfo.length - 1) {
      currentPage++;
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
      update();
    } else {
      Get.to(() => LoginScreen());
    }
    update();
  }

  @override
  onPageChange(int pageIndex) {
    currentPage = pageIndex;
    update();
  }

  @override
  skip() {
    Get.to(() => LoginScreen());
  }

  @override
  void onInit() {
    pageController = PageController();

    super.onInit();
  }
}
