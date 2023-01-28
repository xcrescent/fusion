import 'package:flutter/material.dart';
import 'package:fusion/auth/auth_service.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isLoading = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  List images = [
    "g.png",
    "f.png",
    "t.png",
  ];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    signUpUser() async {
      setState(() {
        _isLoading = true;
      });
      String res = await AuthService().signUpUser(
        _emailController.text.trim(),
        _passwordController.text.trim(),
        _nameController.text,
      );

      if (res != 'success') {
        setState(() {
          _isLoading = false;
        });
        if (!mounted) return;
        return showSnackBarr(res, context);
      } else {
        if (!mounted) return;
        showSnackBarr(
            'Congratulations account has been created for you', context);
        return Navigator.of(context).pushReplacementNamed('/home');
      }
    }

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: w,
                height: h * 0.3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/signup4.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: h * 0.15),
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
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 26,
                        color: Color(0xff5956E9),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
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
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: w,
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40.0,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      cursorColor: Color(0xff5956E9),
                      decoration: const InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff5956E9),
                            ),
                          ),
                          labelStyle: TextStyle(color: Color(0xff5956E9)),
                          labelText: 'Enter full name',
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color(0xff5956E9),
                          )),
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return "First Name is empty";
                        }
                        return null;
                      }),
                      controller: _nameController,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.0, right: 20.0),
                      child: TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Your email id",
                          prefixIcon: Icon(
                            Icons.mail_rounded,
                            color: Colors.deepPurpleAccent,
                          ),
                          hoverColor: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Padding(
                      padding: EdgeInsets.only(left: 12.0, right: 20.0),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Your Password",
                          prefixIcon:
                              Icon(Icons.key, color: Colors.deepPurpleAccent),
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
              SizedBox(
                height: 60.0,
                width: 325.0,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        signUpUser();
                        // _fnameController.clear();
                      } else {
                        showSnackBarr('Please check your details', context);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color(0xff5956E9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                      ),
                    )),
              ),
              const SizedBox(height: 10.0),
              Text(
                "Have an Account?",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey.shade500,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                ),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              // Text(
              //   "Sign up using on the following method",
              //   style: TextStyle(
              //     fontSize: 16.0,
              //     color: Colors.black54,
              //     fontFamily: GoogleFonts.poppins().fontFamily,
              //   ),
              // ),
              
            ],
          ),
        ),
      ),
    );
  }
}
