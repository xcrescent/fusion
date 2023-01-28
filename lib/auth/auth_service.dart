import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fusion/screens/login.dart';
import 'package:fusion/screens/welcome.dart';
import 'package:fusion/utils/const.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService{
  Stream<User?> get authChanges => firebaseAuth.authStateChanges();
  // 1. handleAuthState()

// 2. signInWithGoogle()

// 3. signOut()
  //Determine if the user is authenticated.
  // handleAuthState() {
  //   return StreamBuilder(
  //       stream: FirebaseAuth.instance.authStateChanges(),
  //       builder: (BuildContext context, snapshot) {
  //         if (snapshot.hasData) {
  //           return WelcomePage();
  //         } else {
  //           return const LoginPage();
  //         }
  //       });
  // }
  Future<String> signUpUser(String email, String pass, String fname) async {
    String res = 'Some error occured';
    try {
      // if (fname.isNotEmpty &&
      //     username.isNotEmpty &&
      //     pass.isNotEmpty &&
      //     email.isNotEmpty) {
      //   if (pass == cpass) {
      //     if (validatePassword(pass) == 'strong') {
      UserCredential userCredential =
          await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: pass,
      );
      // String downloadUrl;
      // if (image != null) {
      //   downloadUrl = await _uploadImageToStorage(image);
      // } else {
      //   downloadUrl = '';
      // }
      // User? user = userCredential.user;
      await userCredential.user!.sendEmailVerification();
      if (userCredential.additionalUserInfo!.isNewUser) {
        //store user details in firestore
        firebaseFirestore
            .collection('users')
            .doc(userCredential.user!.uid)
            .set({
          'fname': fname,
          'uid': userCredential.user!.uid,
          'email': email,
        });
      }
      res = 'success';
      //   } else {
      //     res = validatePassword(pass);
      //   }
      // } else {
      //   res = 'Enter same password in both fields';
      // }
      // } else {
      //   res = 'Fields must not be empty';
      // }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        res = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        res = 'The account already exists for that email.';
      }
    } catch (e) {
      res = e.toString();
    }
    // print(res);
    return res;
  }

  signInWithGoogle() async {
    String res = 'Some error occured';
    try {
      GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      UserCredential userCredential =
          await firebaseAuth.signInWithCredential(credential);
      User? user = userCredential.user;
      if (user != null) {
        if (userCredential.additionalUserInfo!.isNewUser) {
          //store user details in firestore
          firebaseFirestore.collection('users').doc(user.uid).set({
            'fname': user.displayName,
            'username': user.email,
            'uid': user.uid,
            'email': user.email,
            'userImage': user.photoURL,
          });
        }
      }
      res = 'success';
      return res;
    } on FirebaseAuthException catch (e) {
      // print(e);
    } catch (e) {
      res = e.toString();
    }
    return res;
    
  }
  loginUsers(String email, String pass) async {
    String res = 'Some error occured';
    try {
      if (email.isNotEmpty && pass.isNotEmpty) {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: pass);
        res = 'success';
      } else {
        res = 'Fields must not be empty';
      }

      // print("Signed in");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        res = 'No user found for this email.';
      } else if (e.code == 'wrong-password') {
        res = 'Incorrect password';
      }
    } catch (e) {
      res = e.toString();
    }
    return res;
  }
  forgotPassword(String email) async {
    String res = 'Some error occured';
    try {
      if (email.isNotEmpty) {
        await firebaseAuth.sendPasswordResetEmail(email: email);
        res = 'success';
      } else {
        res = 'Email field must not be empty';
      }
    } catch (e) {
      res = e.toString();
    }
    return res;
  }
  //Sign out
  signOut() async {
    try {
      await firebaseAuth.signOut();
      // print("Signed Out");
    } on FirebaseAuthException catch (e) {
      // if (e.code == 'user-not-found') {
      // print(e.code);
      // } else if (e.code == 'wrong-password') {
      // print('Wrong password provided for that user.');
    }
  }

}
showSnackBarr(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(content)));
}
