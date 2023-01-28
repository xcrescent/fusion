import 'package:flutter/material.dart';
import 'package:fusion/screens/login.dart';
import 'package:google_fonts/google_fonts.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.only(top: 40.0),
              child: Text(
                "Who is joining?",
                style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: GoogleFonts.montserrat().fontFamily),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Vendor",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          fontFamily: GoogleFonts.poppins().fontFamily),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 10.0),
                        width: w * 0.45,
                        height: 180,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/vendor.png"),
                            fit: BoxFit.cover,
                          ), //DecorationImage
                          border: Border.all(
                            color: Colors.green,
                            width: 8,
                          ), //Border.all
                          borderRadius: BorderRadius.circular(15),
                        ), //BoxDecoration
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Admin",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          fontFamily: GoogleFonts.poppins().fontFamily),
                    ),
                    InkWell(
                      onTap: () {
                           Navigator.pushNamed(context, '/login');
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 6.0),
                        width: w * 0.45,
                        height: 180,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/admin.png"),
                            fit: BoxFit.cover,
                          ), //DecorationImage
                          border: Border.all(
                            color: Colors.green,
                            width: 8,
                          ), //Border.all
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 60.0,
              width: 245.0,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xff5956E9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(Icons.location_on_outlined),
                    // const SizedBox(
                    //   width: 10.0,
                    // ),
                    Text(
                      "Track your order",
                      style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
