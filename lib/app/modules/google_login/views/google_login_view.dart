import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/google_login_controller.dart';

class GoogleLoginView extends GetView<GoogleLoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GoogleLoginView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'GoogleLoginView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
