import 'package:get/get.dart';

import 'package:sartia_global/app/modules/google_login/bindings/google_login_binding.dart';
import 'package:sartia_global/app/modules/google_login/views/google_login_view.dart';
import 'package:sartia_global/app/modules/home/bindings/home_binding.dart';
import 'package:sartia_global/app/modules/home/views/home_view.dart';
import 'package:sartia_global/app/modules/splash/bindings/splash_binding.dart';
import 'package:sartia_global/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.GOOGLE_LOGIN,
      page: () => GoogleLoginView(),
      binding: GoogleLoginBinding(),
    ),
  ];
}
