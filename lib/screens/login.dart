import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fusion/auth_controller.dart';
import 'package:fusion/screens/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    var emailController = TextEditingController();
    var passwordController=  TextEditingController();

    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return GetMaterialApp(
      home: SafeArea(
        child: Scaffold(
       //   backgroundColor: Color(0xff5956E9),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                 // margin: EdgeInsets.only(bottom: 1.0),
                  width: w,
                  height: h*0.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Login4.png"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  width: w,
                  margin: EdgeInsets.only(left : 20,top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text(
                      //   "Welcome",
                      //   style: TextStyle(
                      //     fontSize: 50.0,
                      //     fontWeight: FontWeight.bold,
                      //     fontStyle: FontStyle.italic,
                      //   ),
                      // ),
                      Text(
                        "Sign into your account ",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0 , right: 20.0),
                        child: TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                            ),
                            prefixIcon: Icon(Icons.email , color: Colors.deepPurpleAccent,),
                            hintText: "E-mail",
                            hoverColor: Colors.red,
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0 , right: 20.0),
                        child: TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                            ),
                            prefixIcon: Icon(
                              Icons.key ,
                              color: Colors.deepPurpleAccent
                            ),
                            hintText: "Password",
                            hoverColor: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Padding(
                      padding:  EdgeInsets.only(right: 20.0),
                      child: Text (
                        "Forget your Password?",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xff5956E9),
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                // GestureDetector(
                //   onTap: (){
                //     AuthController.instance.login(emailController.text.trim(), passwordController.text.trim());
                //   },
                //   child: Container(
                //     width: w*0.5,
                //     height: h*0.08,
                //     decoration: BoxDecoration(
                //       color: Color(0xff5956E9),
                //       borderRadius: BorderRadius.circular(30.0),
                //       // image: DecorationImage(
                //       //   image: AssetImage("assets/images/loginbtn.png"),
                //       //   fit: BoxFit.cover,
                //       // ),
                //     ),
                //     child: Center(
                //       child: Text (
                //         "Sign in",
                //         style: TextStyle(
                //           fontSize: 36.0,
                //           color: Colors.white,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 60.0,
                  width: 225.0,
                  child: ElevatedButton(
                      onPressed: (){
                        AuthController.instance.login(emailController.text.trim(), passwordController.text.trim());
                      },
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xff5956E9)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )
                  ),
                ),
                SizedBox(
                  height: w*0.150,
                ),
                RichText(text: TextSpan(
                    text: "Don't have account?",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[500],
                    ),
                    children: [
                      TextSpan (
                          text: " Create",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff5956E9),
                          ),
                          recognizer: TapGestureRecognizer()..onTap=(){
                            Get.to(()=>SignUpPage());
                          }
                      ),
                    ]
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


