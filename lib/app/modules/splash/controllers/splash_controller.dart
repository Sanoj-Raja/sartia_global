import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:sartia_global/app/constants/app_assest.dart';
import 'package:sartia_global/app/routes/app_pages.dart';

class SplashController extends GetxController {
  final logo = AppImages.logo;
  User? user = FirebaseAuth.instance.currentUser;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 2)).then(
      (_) {
        if (user != null) {
          Get.offAndToNamed(Routes.HOME);
        } else
          Get.offAndToNamed(Routes.GOOGLE_LOGIN);
          print('route');
      },
    );
  }

  @override
  void onClose() {}
}
