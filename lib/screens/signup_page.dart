import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fusion/auth_controller.dart';
import 'package:fusion/auth_service.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override

  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override

  Widget build(BuildContext context) {

    var emailController = TextEditingController();
    var passwordController=  TextEditingController();
    List images =[
      "g.png",
      "f.png",
      "t.png",
    ];

    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column (
            children: [
              Container(
                width: w,
                height: h*0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/signup4.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: h*0.15),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30.0),
                  child: Text(
                  "Sign up",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff5956E9),
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),],),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30.0),
                    child: Text(
                      "Create an account to continue our services",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),],),
              Container(
                width: w,
                margin: EdgeInsets.only(left : 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.0 , right: 20.0),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                          ),
                          hintText: "Your email id",
                          prefixIcon: Icon(Icons.mail_rounded , color: Colors.deepPurpleAccent,),
                          hoverColor: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Padding(
                      padding: EdgeInsets.only(left: 12.0 , right: 20.0),
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                          ),
                          hintText: "Your Password",
                          prefixIcon: Icon(Icons.key , color: Colors.deepPurpleAccent),
                          hoverColor: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              // GestureDetector(
              //   onTap: () {
              //     AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
              //   },
              //   child: Container(
              //     width: w*0.5,
              //     height: h*0.08,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(30.0),
              //       image: DecorationImage(
              //         image: AssetImage("assets/images/loginbtn.png"),
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //     child: Center(
              //       child: Text (
              //         "Sign up",
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
                width: 325.0,
                child: ElevatedButton(
                    onPressed: (){
                      AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
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
                      "Sign up",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                ),
              ),
              SizedBox(
                  height: 10.0
              ),
              RichText(text: TextSpan(
                  recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
                  text: "Have an Account?",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey.shade500
                  )
              ),
              ),
              SizedBox(
                height: w*0.160,
              ),
              Text(
                "Sign up using on the following method",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      AuthService().signInWithGoogle();
                    },
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[500],
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("assets/images/g.png"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 13.0,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey[500],
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/images/f.png"),
                    ),
                  ),
                  // SizedBox(
                  //   width: 13.0,
                  // ),
                  // CircleAvatar(
                  //   radius: 30,
                  //   backgroundColor: Colors.grey[500],
                  //   child: CircleAvatar(
                  //     radius: 25,
                  //     backgroundImage: AssetImage("img/t.png"),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
