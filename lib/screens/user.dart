import 'package:flutter/material.dart';
import 'package:fusion/screens/login.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40.0),
              child: Text(
                "Who is joining ?",
                style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0 , top: 20.0),
                  child: Text(
                    "Vendor",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),
                  ),
                ),
                SizedBox(
                  width: 100.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0 , top: 20.0 , right: 25.0),
                  child: Text(
                    "Admin",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10.0),
                    width: w*0.45,
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
                SizedBox(
                  width: 20.0,
                ),
                InkWell(
                  onTap: (){
                //    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 6.0),
                    width: w*0.45,
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
            SizedBox(
              height: 300.0,
            ),
            SizedBox(
              height: 60.0,
              width: 245.0,
              child: ElevatedButton(
                onPressed: (){
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
                child:Row(
                  children: [
                    SizedBox(
                      width: 20.0,
                    ),
                    Icon(Icons.location_on_outlined),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Track your order",
                      style: TextStyle(
                        fontSize: 17.0,
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
