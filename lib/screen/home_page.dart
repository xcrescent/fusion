import 'package:flutter/material.dart';
import 'package:fusion/screen/Infopage.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
var count=0;
Container warehouse()
{
  return Container(
    child:Column(
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
    ) ,
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20,),

              Container(child:Image.asset('photos/home.png') ,),
              Container(
                // height: 60,
                  padding: EdgeInsets.only(right: 5, left: 20),
                  margin: EdgeInsets.only( right: 30, left: 30),
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [

                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    backgroundImage:
                                    AssetImage('photos/Frame 2976.png'),
                                    radius: 45,
                                  ),
                                  Text('Ware House1',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  TextButton(onPressed: (){
                                    Navigator.pushNamed(context, "/infopage");
                                  },
                                      child:Container(
                                        padding: EdgeInsets.all(12),
                                        margin: EdgeInsets.all(8),
                                        height: 40,
                                        width: 120,
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
                                        child: Text('CLICK HERE',style: TextStyle(color: Colors.white),),
                                        ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [

                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    backgroundImage:
                                    AssetImage('photos/Frame 2976.png'),
                                    radius: 45,
                                  ),
                                  Text('Ware House2',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  TextButton(onPressed: (){Navigator.pushNamed(context, "/infopage");},
                                    child:Container(
                                      padding: EdgeInsets.all(12),
                                      margin: EdgeInsets.all(8),
                                      height: 40,
                                      width: 120,
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
                                      child: Text('CLICK HERE',style: TextStyle(color: Colors.white),),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 1,
                                width: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [

                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    backgroundImage:
                                    AssetImage('photos/Frame 2976.png'),
                                    radius: 45,
                                  ),
                                  Text('Ware House3',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  TextButton(onPressed: (){Navigator.pushNamed(context, "/infopage");},
                                    child:Container(
                                      padding: EdgeInsets.all(12),
                                      margin: EdgeInsets.all(8),
                                      height: 40,
                                      width: 120,
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
                                      child: Text('CLICK HERE',style: TextStyle(color: Colors.white),),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 1,
                                width: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [

                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    backgroundImage:
                                    AssetImage('photos/Frame 2976.png'),
                                    radius: 45,
                                  ),
                                  Text('Ware House4',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  TextButton(onPressed: (){Navigator.pushNamed(context, "/infopage");},
                                    child:Container(
                                      padding: EdgeInsets.all(12),
                                      margin: EdgeInsets.all(8),
                                      height: 40,
                                      width: 120,
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
                                      child: Text('CLICK HERE',style: TextStyle(color: Colors.white),),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 1,
                                width: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [

                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    backgroundImage:
                                    AssetImage('photos/Frame 2976.png'),
                                    radius: 45,
                                  ),
                                  Text('Ware House5',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  TextButton(onPressed: (){Navigator.pushNamed(context, "/infopage");},
                                    child:Container(
                                      padding: EdgeInsets.all(12),
                                      margin: EdgeInsets.all(8),
                                      height: 40,
                                      width: 120,
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
                                      child: Text('CLICK HERE',style: TextStyle(color: Colors.white),),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 1,
                                width: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [

                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    backgroundImage:
                                    AssetImage('photos/Frame 2976.png'),
                                    radius: 45,
                                  ),
                                  Text('Ware House6',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  TextButton(onPressed: (){Navigator.pushNamed(context, "/infopage");},
                                    child:Container(
                                      padding: EdgeInsets.all(12),
                                      margin: EdgeInsets.all(8),
                                      height: 40,
                                      width: 120,
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
                                      child: Text('CLICK HERE',style: TextStyle(color: Colors.white),),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 1,
                                width: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [

                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    backgroundImage:
                                    AssetImage('photos/Frame 2976.png'),
                                    radius: 45,
                                  ),
                                  Text('Ware House 7',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  TextButton(onPressed: (){Navigator.pushNamed(context, "/infopage");},
                                    child:Container(
                                      padding: EdgeInsets.all(12),
                                      margin: EdgeInsets.all(8),
                                      height: 40,
                                      width: 120,
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
                                      child: Text('CLICK HERE',style: TextStyle(color: Colors.white),),
                                    ),
                                  )
                                ],
                              ),

                              SizedBox(
                                height: 1,
                                width: 5,
                              ),
                              Column(children: [
                                Container(

                                    padding: EdgeInsets.all(5),
                                    child: IconButton(onPressed:(){
                                  setState(() {
                                    count=1;
                                  });
                                }, icon:Icon(Icons.add,size: 40),),),
                                SizedBox(height: 10,),
                                Text('ADD NEW WAREHOUSE'),
                              ],),
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
      ),
    );
  }
}
