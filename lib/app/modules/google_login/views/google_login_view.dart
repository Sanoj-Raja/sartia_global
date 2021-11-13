import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sartia_global/app/constants/app_strings.dart';
import 'package:sartia_global/app/widgets/large_button.dart';
import '../controllers/google_login_controller.dart';

class GoogleLoginView extends GetView<GoogleLoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  controller.logo,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(25.0),
                child: LargeButton(
                  buttonText: AppStrings.signInWithGoogle,
                  onPressed: 
                   controller.googleLogin,
                  isUpperCaseButtonText: false,
                  buttonLeftImage: controller.googleImage,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
