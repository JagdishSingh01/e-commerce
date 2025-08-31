import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  //variables

  //Update current index when page scrolling
  void updatePageIndicator(int index) {}

  // jump to specific dot selected page
  void dotNavigationClick(int index) {}

  // Update current index & jump to next page
  void nextPage() {}

  // update current index & jump to previous page
  void previousPage() {}
}
