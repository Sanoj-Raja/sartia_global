import 'package:get/get.dart';
import 'package:sartia_global/app/routes/app_pages.dart';
import 'package:sartia_global/app/utils/google_authentication.dart';

class HomeController extends GetxController {
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

  void logout() {
    GoolgleAuthentication.signOut().then(
      (_) {
        Get.offAllNamed(Routes.SPLASH);
      },
    );
  }
}
