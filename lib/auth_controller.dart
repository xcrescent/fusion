import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fusion/screens/login.dart';

class AuthController extends GetxController{
  //AuthController.instance.......... we will use in future
  static AuthController instance =Get.find();  // we are using static because we want access it from the using the class name and the dot one .
  // email , pass , name etc....
  late Rx<User?> _user;  // firebase user model
  FirebaseAuth auth = FirebaseAuth.instance;  //using auth we will be able to access lots of property that would be useful for our app for our authentication and navigating to different

  @override
  void onReady(){
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    // our user would be notified
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);  //(listener , call back )  getx function for more info goto google
  }

  _initialScreen(User? user){
    if(user==null){   // user is null means that nobody has logged in or yet or nobody is trying to log in
      print("Login page");
      Get.offAll(()=>LoginPage());
    }else{
   //   Get.offAll(()=>WelcomePage(email:user.email!));
    }
  }
  Future<void> register(String email , password) async {  // Helper function from signup view and signup view pass email and password to him
    try{
      await  auth.createUserWithEmailAndPassword(email: email, password: password);
    }catch(e){
      Get.snackbar("About User", "User Message",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
        titleText: Text(
          "Account Creation Failed",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        messageText: Text(
          e.toString(),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }
  Future<void> login(String email , password) async {  // Helper function from signup view and signup view pass email and password to him
    try{
      await  auth.signInWithEmailAndPassword(email: email, password: password);
    }catch(e){
      Get.snackbar("About Login", "Login Message",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
        titleText: Text(
          "Login Failed",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        messageText: Text(
          e.toString(),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }
  Future<void> logOut()async {
    auth.signOut();
  }
}
