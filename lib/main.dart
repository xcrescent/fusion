import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fusion/firebase_options.dart';
import 'package:fusion/screen/home_page.dart';
import 'package:fusion/screen/Infopage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
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
      home:  MyHomePage(title: 'Fusion'),
      routes: {
        "/infopage" :(context)=>Infopage(),
      },

    );
  }
}

