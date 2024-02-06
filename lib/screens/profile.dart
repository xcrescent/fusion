import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      child: Text(
                        'My Profile',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        'photos/man.png',
                      ),
                      radius: 50,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 30, right: 30),
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
                      child: Column(
                        children: [
                          Text(
                            'Rosina Doe',
                            style: TextStyle(fontSize: 28, color: Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.white,
                                size: 35,
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Text(
                                'Address 43 , Uk',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(right: 30, left: 30),
                        width: double.infinity,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Shopping Address',
                              style:
                              TextStyle(color: Colors.white, fontSize: 23),
                            ),
                            Icon(
                              Icons.chevron_right_sharp,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(right: 30, left: 30),
                        width: double.infinity,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Edit Profile',
                              style:
                              TextStyle(color: Colors.white, fontSize: 23),
                            ),
                            Icon(
                              Icons.chevron_right_sharp,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(right: 30, left: 30),
                        width: double.infinity,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'order History',
                              style:
                              TextStyle(color: Colors.white, fontSize: 23),
                            ),
                            Icon(
                              Icons.chevron_right_sharp,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(right: 30, left: 30),
                        width: double.infinity,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'cards',
                              style:
                              TextStyle(color: Colors.white, fontSize: 23),
                            ),
                            Icon(
                              Icons.chevron_right_sharp,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(right: 30, left: 30),
                        width: double.infinity,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Notification',
                              style:
                              TextStyle(color: Colors.white, fontSize: 23),
                            ),
                            Icon(
                              Icons.chevron_right_sharp,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}