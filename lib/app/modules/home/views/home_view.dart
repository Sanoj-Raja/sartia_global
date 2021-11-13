import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sartia_global/app/constants/app_strings.dart';
import 'package:sartia_global/app/widgets/large_button.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: Get.height * .4,
                left: 30,
                right: 30,
              ),
              child: Text(
                AppStrings.userSuccessfullyLogedIn,
                style: Get.textTheme.headline1,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: LargeButton(
                buttonText: AppStrings.logout,
                onPressed: controller.logout,
                buttonHorizontalPadding: 35,
              ),
            )
          ],
        ),
      ),
    );
  }
}
