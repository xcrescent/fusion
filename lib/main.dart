import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fusion/firebase_options.dart';
import 'package:fusion/screens/getstarted.dart';
import 'package:get/get.dart';

import 'auth_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthController())
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fusion',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  GetStarted(),
      debugShowCheckedModeBanner: false,
    );
  }
}


