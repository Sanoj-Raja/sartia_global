import 'package:get/get.dart';
import 'package:sartia_global/app/constants/app_assest.dart';
import 'package:sartia_global/app/routes/app_pages.dart';
import 'package:sartia_global/app/utils/google_authentication.dart';

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
    GoolgleAuthentication.loginWithGoogle().then(
      (user) {
        if (user != null) {
          Get.offAndToNamed(Routes.HOME);
        }
      },
    );
  }
}
