import 'package:flutter/material.dart';
import 'package:fusion/screens/getstarted.dart';
import 'package:fusion/screens/user.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor:Color(0xff5956E9) ,
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 35.0 , left: 15.0),
              child: Image(
                image: AssetImage("assets/images/Img1.png"),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 60.0,
              width: 225.0,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>User()));
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff5956E9),
                    ),
                  )
              ),
            ),
          ],
        )
    );
  }
}
