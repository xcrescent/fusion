import 'package:flutter/material.dart';
import 'package:fusion/admin/order.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.deepPurpleAccent,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              //tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          ElevatedButton.icon(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            onPressed: (){

            },
            icon: Icon(
              Icons.more_horiz_rounded,
              color: Colors.deepPurpleAccent,
            ),
            label:Text(""),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 35.0,
          ),
          Center(
            child: Text(
              "H! ADMIN  😊 ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.deepPurpleAccent
              ),
            ),
          ),
          SizedBox(
            height: 2.0,
          ),
          Image(
            image: AssetImage(
              "assets/images/cloud.png",
            ),
          ),
          SizedBox(
            height: 35.0,
          ),
          SizedBox(
            height: 45.0,
            width: 325.0,
            child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Order()));
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
                  "Approve Orders",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
            ),
          ),
          Container(
            alignment: AlignmentDirectional.bottomEnd,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height-421,
            child: Image(
              image: AssetImage(
                "assets/images/man.png",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
