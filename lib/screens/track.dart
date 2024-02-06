import 'package:flutter/material.dart';

class Track extends StatefulWidget {
  const Track({Key? key}) : super(key: key);

  @override
  State<Track> createState() => _TrackState();
}

class _TrackState extends State<Track> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  Image.asset('photos/Top.png'),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Enter Up To 25 tracking Numbers",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                      height: 60,
                      padding: EdgeInsets.only(right: 5, left: 20),
                      margin: EdgeInsets.only(right: 30, left: 30),
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          // border:Border(20),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              child: Icon(
                                Icons.search,
                                size: 38,
                              ),
                              margin: EdgeInsets.fromLTRB(3, 0, 7, 0),
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter Tracking Id',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 50,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      padding: EdgeInsets.only(left: 30, top: 17),
                      margin: EdgeInsets.all(8),
                      height: 60,
                      width: 230,
                      decoration: BoxDecoration(
                        color: Color(0xff5956E9),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(1.0, 1.0),
                            spreadRadius: (1.0),
                            blurRadius: (1.0),
                          ),
                        ],
                      ),
                      // height: 50,
                      // color: Colors.deepPurple,
                      child: Text(
                        'Apply flitter here',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}