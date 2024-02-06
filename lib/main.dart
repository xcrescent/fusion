import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:fusion/admin/admin_page.dart';
import 'package:fusion/auth/auth_controller.dart';
import 'package:fusion/auth/auth_service.dart';
import 'package:fusion/firebase_options.dart';
import 'package:fusion/screens/add_warehouse.dart';
import 'package:fusion/screens/forgot_password.dart';
import 'package:fusion/screens/home_page.dart';
import 'package:fusion/screens/getstarted.dart';
import 'package:fusion/screens/login.dart';
import 'package:fusion/screens/signup_page.dart';
import 'package:fusion/screens/splash_screen.dart';
import 'package:fusion/utils/const.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fusion',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StreamBuilder(
          stream: AuthService().authChanges,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return
                const Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              );
            }
            if (snapshot.hasData) {
              SchedulerBinding.instance.addPostFrameCallback((_) async {
                final user = firebaseAuth.currentUser;
                Navigator.of(context).pushReplacementNamed( await AuthController().checkAdmin(user));
              });
            }
            else
              return SplashScreen();
            return MyHomePage();
          }),
      routes: {
        "/getStarted": ((context) => const GetStarted()),
        "/home": ((context) =>  MyHomePage()),
        '/signup': (context) => const SignUpPage(),
        '/login': (context) => const LoginPage(),
        "/forgotPass": ((context) => const ForgotPassActivity()),
        "/addWarehouse": ((context) => const AddWareHouse()),
        "/admin":((context) => const AdminPage())
      },
    );
  }


}