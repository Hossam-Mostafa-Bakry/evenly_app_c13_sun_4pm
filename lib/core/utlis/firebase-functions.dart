import 'package:evently_app_c13_sun_4_pm/core/services/snack_bar_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class FirebaseFunctions {
  static Future<bool> createAccount({
    required String emailAddress,
    required String password,
  }) async {
    EasyLoading.show();
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );

      SnackBarService.showSuccessMessage("Account created successfully");
      return Future.value(true);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        // print(e.message);
        // print('The password provided is too weak.');
        SnackBarService.showErrorMessage(
            e.message ?? 'The password provided is too weak.');
        return Future.value(false);
      } else if (e.code == 'email-already-in-use') {
        // print('The account already exists for that email.');
        SnackBarService.showErrorMessage(
            e.message ?? 'The password provided is too weak.');
        return Future.value(false);
      }
      return Future.value(false);
    } catch (e) {
      print(e);
      return Future.value(false);
    }
  }

  static Future<bool> login({
    required String emailAddress,
    required String password,
  }) async {
    EasyLoading.show();
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);

      SnackBarService.showSuccessMessage("Logged In successfully");
      return Future.value(true);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        // print(e.message);
        // print('The password provided is too weak.');
        SnackBarService.showErrorMessage(
            e.message ?? 'The password provided is too weak.');
        return Future.value(false);
      } else if (e.code == 'wrong-password') {
        // print('The account already exists for that email.');
        SnackBarService.showErrorMessage(
            e.message ?? 'The password provided is too weak.');
        return Future.value(false);
      }
      return Future.value(false);
    } catch (e) {
      print(e);
      return Future.value(false);
    }
  }
}
