import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ORDERS",
            style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
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
              );
            },
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 40.0,
            ),
            Container(
              child: Row (
                children: [
                  const SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    height:  105,
                    width: w*0.3,
                    decoration: const BoxDecoration(
                      color: Color(0xffE5C7FC),
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
                    child: const Column(
                      children: [
                        SizedBox(
                          height:10.0 ,
                        ),
                        Text(
                          "New Order",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "245",
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Color(0xffA360D8),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    height:  105,
                    width: w*0.3,
                    decoration: const BoxDecoration(
                      color: Color(0xffE4FFFC),
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
                    child: const Column(
                      children: [
                        SizedBox(
                          height:10.0 ,
                        ),
                        Text(
                          "Pending Order",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "245",
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Color(0xff26DCC6),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    height:  105,
                    width: w*0.3,
                    decoration: const BoxDecoration(
                      color: Color(0xffF3E3CC),
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
                    child: const Column(
                      children: [
                        SizedBox(
                          height:10.0 ,
                        ),
                        Text(
                          "Delevered Order",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "245",
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Color(0xffE3B36D),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20.0,
                ),
                Image(
                    image: AssetImage("assets/images/box2.png")
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  "Pending Order",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          const  SizedBox(
              height: 20.0,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  "1. NewYork",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  "246",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox( width: 60,),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Image(
                    image: AssetImage("assets/images/accept.png"),
                  ),
                ) ,
                SizedBox( width: 20,),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Image(
                    image: AssetImage("assets/images/multiply.png"),
                  ),
                ) ,
              ],
            ),
            const  SizedBox(
              height: 20.0,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  "2. Denmark",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  "246",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox( width: 60,),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Image(
                    image: AssetImage("assets/images/accept.png"),
                  ),
                ) ,
                SizedBox( width: 20,),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Image(
                    image: AssetImage("assets/images/multiply.png"),
                  ),
                ) ,
              ],
            ),
            const  SizedBox(
              height: 20.0,
            ),
 
          ],
        ),
      ),
    );
  }
}