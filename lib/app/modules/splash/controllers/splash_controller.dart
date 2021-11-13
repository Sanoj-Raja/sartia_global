import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';
import 'package:sartia_global/app/constants/app_assest.dart';
import 'package:sartia_global/app/routes/app_pages.dart';

class SplashController extends GetxController {
  final logo = AppImages.logo;
  User? user = FirebaseAuth.instance.currentUser;
  Location location = Location();

  @override
  void onInit() {
    super.onInit();
    location.onLocationChanged.listen(
      (currentLocation) {
        sendLocationToFirestore(
          currentLocation.latitude ?? 0.0,
          currentLocation.longitude ?? 0.0,
        );
      },
    );
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
      },
    );
  }

  @override
  void onClose() {}

  Future sendLocationToFirestore(double latitude, double longitude) async {
    Map<String, dynamic> userLocation = {
      'Latitude': latitude,
      'Longitude': longitude,
    };

    CollectionReference locationReference =
        FirebaseFirestore.instance.collection('User_Location');

    await locationReference.add(userLocation);
    print('Location send with cordinates $longitude & $latitude.');
  }
}
