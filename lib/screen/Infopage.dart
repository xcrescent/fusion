import 'package:flutter/material.dart';
import 'package:fusion/screen/home_page.dart';
import 'package:fusion/screen/profile.dart';
class Infopage extends StatefulWidget {
  const Infopage({Key? key}) : super(key: key);

  @override
  State<Infopage > createState() => _InfopageState();
}

class _InfopageState extends State<Infopage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        backgroundColor: Color(0xff5956E9),
      ),
      drawer: SafeArea(
        child: Drawer(
            backgroundColor: Color(0xff5956E9),
          child: Expanded(child: Stack(
            children: [
              Image.asset('photos/Menu.png',fit: BoxFit.fill,),
              Column(
                children: [
                     Container(
                       margin: EdgeInsets.only(top: 200,left: 20),
                       child:  Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                       Icon(Icons.person_outline,color: Colors.white38,size: 45,),
                       SizedBox(width: 40,),
                       TextButton(onPressed: (){
                         Navigator.pushNamed(context, "/profile");
                       }, child: Text('Profile',style: TextStyle(color: Colors.white38,fontSize: 23),)),
                     ],),),
                  Container(
                    margin: EdgeInsets.only(left: 20,top: 20),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.shopping_cart_outlined,color: Colors.white38,size: 40,),
                        SizedBox(width: 40,),
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, "/track");
                        }, child: Text('My Orders',style: TextStyle(color: Colors.white38,fontSize: 23),)),
                      ],),),
                  Container(
                    margin: EdgeInsets.only(left: 20,top: 20),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.favorite_border,color: Colors.white38,size: 45,),
                        SizedBox(width: 40,),
                        TextButton(onPressed: (){}, child: Text('WishList',style: TextStyle(color: Colors.white38,fontSize: 23,
                        fontWeight: FontWeight.bold),)),
                      ],),),
                  Container(
                    margin: EdgeInsets.only(left: 20,top: 20),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.settings,color: Colors.white38,size: 45,),
                        SizedBox(width: 40,),
                        TextButton(onPressed: (){}, child: Text('Settings',style: TextStyle(color: Colors.white38,fontSize: 23),)),
                      ],),),
                  Container(
                    margin: EdgeInsets.only(left: 20,top: 250),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.exit_to_app,color: Colors.white38,size: 40,),
                        TextButton(onPressed: (){}, child: Text('Sign Out',style: TextStyle(color: Colors.white38,fontSize: 23),)),
                      ],),)
                ],
              ),
            ],
          ),)
        ),
      ),
      body:Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child:Image.asset('photos/product.png') ,),
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

                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceAround,

                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Image.asset('photos/shoes.png',),
                                      radius: 50,


                                    ),
                                    Text('Ware House1', style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),),
                                    Container(
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
                                      children: [
                                        IconButton(onPressed: (){}, icon: Icon(Icons.remove,color: Colors.white,)),
                                        IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.white,)),
                                      ],
                                    ),),
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                              Row(

                                mainAxisAlignment: MainAxisAlignment
                                    .spaceAround,

                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Image.asset('photos/shoes.png',),
                                    radius: 50,


                                  ),
                                  Text('Ware House1', style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),),
                                  Container(
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
                                      children: [
                                        IconButton(onPressed: (){}, icon: Icon(Icons.remove,color: Colors.white,)),
                                        IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.white,)),

                                      ],
                                    ),),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),

                              Column(children: [
                                Container(

                                  padding: EdgeInsets.all(5),
                                  child: IconButton(onPressed:(){
                                    setState(() {

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
// Column(
// children: [
// Container(
// padding: EdgeInsets.all(10),
// width: double.infinity,
// color: Colors.grey.shade200,
// child: Column(children: [
// Container(
//
// child: CircleAvatar(
// backgroundImage: AssetImage('images/img2.jpg'
// ),
// radius: 70,
// )
//
// ),
// Text('Harsh Gupta',style: TextStyle(fontSize: 25),),
// ],),),
// SizedBox(height: 20,),
// Container(
// child:
// Text('Shop By categories',style: TextStyle(fontSize: 20),),
// ),
// SizedBox(height: 20,),
// Container(
// width: double.infinity,
// color: Colors.grey.shade200,
// child: TextButton(onPressed: (){},
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [Text('For Men',style: TextStyle(color: Colors.black,fontSize: 15),),
// Icon(Icons.tag_faces_sharp,color: Colors.black,)
// ],)
// ),
// ),
// SizedBox(height: 10,),
// Container(
// width: double.infinity,
// color: Colors.grey.shade200,
// child: TextButton(onPressed: (){},
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [Text('For Women',style: TextStyle(color: Colors.black,fontSize: 15),),
// Icon(Icons.face_retouching_natural,color: Colors.black,)
// ],)
// ),
// ),
// SizedBox(height: 10,),
// Container(
// width: double.infinity,
// color: Colors.grey.shade200,
// child: TextButton(onPressed: (){},
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [Text('For Kids',style: TextStyle(color: Colors.black,fontSize: 15),),
// Icon(Icons.child_care,color: Colors.black,)
// ],)
// ),
// ),
// Container(
// child: Center(
// child: Column(
// children: [
// TextButton(onPressed: (){}, child: Text('Contact Us')),
// TextButton(onPressed: (){}, child: Text('Log Out')),
//
// ],),),),
// ],
// ),