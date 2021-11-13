import 'package:get/get.dart';
import 'package:sartia_global/app/constants/app_assest.dart';
import 'package:sartia_global/app/routes/app_pages.dart';

class GoogleLoginController extends GetxController {
  final String logo = AppImages.logo;
  final String googleImage = AppImages.google;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void googleLogin() {
    // Google Login Process.

    // GoolgleAuthentication.signInWithGoogle().then(
    //   (user) {
    //     if (user != null) {

    //       Get.offAndToNamed(Routes.HOME);
    //     }
    //   },
    // );
  }
}
