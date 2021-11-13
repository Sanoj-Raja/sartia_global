import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sartia_global/app/constants/app_strings.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            AppStrings.userSuccessfullyLogedIn,
            style: Get.textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
