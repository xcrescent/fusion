import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
          child: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    // height: 60,
                      padding: EdgeInsets.only(right: 5, left: 20),
                      margin: EdgeInsets.only(top: 20, right: 30, left: 30),
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          // border:Border(20),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                            },
                            child: Container(child: Icon(Icons.search,size: 38,),
                              margin: EdgeInsets.fromLTRB(3, 0, 7,0),
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(height: 10,),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.white,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Container(
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 260,
                                        decoration: BoxDecoration(
                                          color: Colors.lightBlueAccent.shade700,
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
                                        child: TextButton(
                                          onPressed: () {},
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            backgroundImage:
                                            AssetImage('images/cimg1.webp'),
                                            radius: 35,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text('Top Offers'),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.lightBlueAccent.shade700,
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
                                        child: TextButton(
                                          onPressed: () {},
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            backgroundImage:
                                            AssetImage('images/cimg2.webp'),
                                            radius: 35,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text('Grocery'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 1,
                                    width: 5,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.lightBlueAccent.shade700,
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
                                        child: TextButton(
                                          onPressed: () {},
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            backgroundImage:
                                            AssetImage('images/cimg3.webp'),
                                            radius: 35,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text('Fashion'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 1,
                                    width: 5,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.lightBlueAccent.shade700,
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
                                        child: TextButton(
                                          onPressed: () {},
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            backgroundImage:
                                            AssetImage('images/cimg4.webp'),
                                            radius: 35,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text('Electronics'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 1,
                                    width: 5,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.lightBlueAccent.shade700,
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
                                        child: TextButton(
                                          onPressed: () {},
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            backgroundImage:
                                            AssetImage('images/cimg5.webp'),
                                            radius: 35,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text('furniture'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 1,
                                    width: 5,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.lightBlueAccent.shade700,
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
                                        child: TextButton(
                                          onPressed: () {},
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            backgroundImage:
                                            AssetImage('images/cimg6.webp'),
                                            radius: 35,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text('Mobiles'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 1,
                                    width: 5,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.lightBlueAccent.shade700,
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
                                        child: TextButton(
                                          onPressed: () {},
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            backgroundImage:
                                            AssetImage('images/cimg7.webp'),
                                            radius: 35,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text('Travel'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 1,
                                    width: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1,
                          width: 2,
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          )
      ),
    );
  }
}
