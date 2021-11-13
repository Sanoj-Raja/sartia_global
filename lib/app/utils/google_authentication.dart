import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sartia_global/app/constants/app_errors.dart';

class GoolgleAuthentication {
  static Future<User?> loginWithGoogle() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential authCredential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken,
      );

      try {
        final UserCredential userCredential =
            await auth.signInWithCredential(authCredential);

        user = userCredential.user;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          Get.snackbar(
            AppErrors.accountAlreadyExistsError,
            AppErrors.accountAlreadyExistsErrorDetails,
          );
        } else if (e.code == 'invalid-credential') {
          Get.snackbar(
            AppErrors.invalidCredentials,
            AppErrors.invalidCredentialsDetails,
          );
        }
      } catch (e) {
        Get.snackbar(
          AppErrors.signInError,
          AppErrors.signInErrorDetails,
        );
      }
    }

    return user;
  }

  static Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      Get.snackbar(
        AppErrors.signoutError,
        AppErrors.signoutErrorDetails,
      );
    }
  }
}

