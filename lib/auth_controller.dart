import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:muskan1/login.dart';
import 'package:muskan1/Intro.dart';
import 'package:flutter/material.dart';

class AuthController extends GetxController {
  //AuthController.instance
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      print("Login page");
      Get.offAll(() => login());
    } else {
      Get.offAll(() => intro());
    }
  }

    void register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch(e) {
      Get.snackbar("About User", "User Message",
      backgroundColor: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
        titleText: Text(
          "Failed To Create An Account",
              style: TextStyle(
            color: Colors.black,
              )
        )
      );
        messageText: Text(
          e.toString(),
    style: TextStyle(
    color: Colors.black
        )
      );
    }
  }
}