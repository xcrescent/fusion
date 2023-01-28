import 'package:flutter/material.dart';
import 'package:fusion/admin/admin_page.dart';
import 'package:fusion/auth/auth_controller.dart';
import 'package:fusion/auth/auth_service.dart';
import 'package:fusion/utils/const.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool admin = false;
  bool _isLoading = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  loginUsers() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthService().loginUsers(
        _emailController.text.trim(), _passwordController.text.trim());
    if (res != 'success') {
      setState(() {
        _isLoading = false;
      });
      if (!mounted) return;
      return showSnackBarr(res, context);
    } else {
      if (!mounted) return;
      showSnackBarr(
          'Congratulations you have been successfully signed in..', context);
      final user = firebaseAuth.currentUser;
      Navigator.of(context)
          .pushReplacementNamed(await AuthController().checkAdmin(user));
    }
  }

  // checkAdmin(uid) async {
  //   var adminDoc = await firebaseFirestore.collection('admin').get();
  //   for (var element in adminDoc.docs) {
  //     if (element.id == uid) {
  //       if (!mounted) return;
  //       Navigator.of(context).pushReplacement(
  //           MaterialPageRoute(builder: (context) => const AdminPage()));
  //     }
  //   }
  //   if (!mounted) return;
  //   Navigator.of(context).pushReplacementNamed('/home');
  // }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                // margin: EdgeInsets.only(bottom: 1.0),
                width: w,
                height: h * 0.3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Login4.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Container(
                  color: Color(0xff6251FD),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: 40),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24),
                        topLeft: Radius.circular(24),
                      ),
                    ),
                    width: w,
                    // margin: const EdgeInsets.only(left: 20, top: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Sign into your account ",
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w700,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              color: Colors.black54,
                            ),
                          ),
                          const SizedBox(
                            height: 25.0,
                          ),
                          TextFormField(
                            cursorColor: Colors.deepPurpleAccent,
                            decoration: const InputDecoration(
                              filled: true,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.deepPurpleAccent),
                              ),
                              labelText: 'Enter email address',
                              labelStyle:
                                  TextStyle(color: Colors.deepPurpleAccent),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                            controller: _emailController,
                          ),
                          const SizedBox(height: 30.0),
                          TextFormField(
                            obscureText: true,
                            cursorColor: Colors.deepPurpleAccent,
                            decoration: const InputDecoration(
                              filled: true,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.deepPurpleAccent),
                              ),
                              labelText: 'Enter password',
                              labelStyle:
                                  TextStyle(color: Colors.deepPurpleAccent),
                              prefixIcon: Icon(
                                Icons.key,
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                            controller: _passwordController,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: (() {
                                  Navigator.of(context)
                                      .pushNamed('/forgotPass');
                                }),
                                child: Text(
                                  "Forget your Password?",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Color(0xff5956E9),
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    // fontStyle: FontStyle.,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                  )),
              Container(
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        await loginUsers();
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 2,
                        minimumSize: const Size(double.infinity, 50),
                        foregroundColor: Colors.white,
                        backgroundColor: Color(0xff5956E9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/signup');
                      },
                      child: RichText(
                        text: TextSpan(
                            text: "Don't have account?",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              color: Colors.grey[500],
                            ),
                            children: [
                              TextSpan(
                                text: " Create",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                  color: Color(0xff5956E9),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "OR",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // const SizedBox(
              //   height: 15.0,
              // ),
              InkWell(
                onTap: () async {
                  await signInWithGoogle();
                },
                child: CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage("assets/images/g.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  signInWithGoogle() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthService().signInWithGoogle();
    if (res != 'success') {
      setState(() {
        _isLoading = false;
      });
      if (!mounted) return;
      return showSnackBarr('Could not log you in!!\n Try again .....', context);
    } else {
      if (!mounted) return;
      showSnackBarr(
          'Congratulations you have been successfully signed in..', context);
      final user = firebaseAuth.currentUser;
      
      Navigator.of(context).pushReplacementNamed(await AuthController().checkAdmin(user));
    }
  }
}
