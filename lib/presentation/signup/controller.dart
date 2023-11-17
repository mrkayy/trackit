import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignupScreenController extends GetxController {
  @override
  void onReady() {
    super.onReady();
  }

  signInWithGoogle() async {
    try {
      GoogleSignInAccount? user = await GoogleSignIn().signIn();

      GoogleSignInAuthentication? googleAuth = await user!.authentication;

      AuthCredential credential =
          GoogleAuthProvider.credential(accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      return null;
    }
  }
}
