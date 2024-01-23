import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screens/login/login_screen.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if(currentPageIndex.value == 2) {
      // Jump to LoginScreen
      Get.offAll(const LoginScreen());
    } else {
      final page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}