import 'package:flutter/material.dart';

class AddItems extends StatefulWidget {
  const AddItems({Key? key}) : super(key: key);

  @override
  State<AddItems> createState() => _AddItemsState();
}

class _AddItemsState extends State<AddItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff5956E9),
          title: Text(
            "Enter Your Details for Shipping",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "1.Country",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 39.0,
                ),
                SizedBox(
                  height: 40.0,
                  width: 160.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //  prefixIcon: Icon(Icons.email , color: Colors.deepPurpleAccent,),
                      hintText: "Enter Country ",
                      hoverColor: Colors.red,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "2.Commodity",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                SizedBox(
                  height: 40.0,
                  width: 160.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //  prefixIcon: Icon(Icons.email , color: Colors.deepPurpleAccent,),
                      hintText: "Enter Commodity ",
                      hoverColor: Colors.red,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "3.Quantity",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 35.0,
                ),
                SizedBox(
                  height: 40.0,
                  width: 160.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //  prefixIcon: Icon(Icons.email , color: Colors.deepPurpleAccent,),
                      hintText: "Enter Quantity ",
                      hoverColor: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "4.Category",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                SizedBox(
                  height: 40.0,
                  width: 160.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //  prefixIcon: Icon(Icons.email , color: Colors.deepPurpleAccent,),
                      hintText: "Enter Category ",
                      hoverColor: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "5.Volume",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 41.0,
                ),
                SizedBox(
                  height: 40.0,
                  width: 160.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //  prefixIcon: Icon(Icons.email , color: Colors.deepPurpleAccent,),
                      hintText: "Enter Volume ",
                      hoverColor: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "6.Distance",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                SizedBox(
                  height: 40.0,
                  width: 160.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //  prefixIcon: Icon(Icons.email , color: Colors.deepPurpleAccent,),
                      hintText: "Enter Distance ",
                      hoverColor: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "7.Freight Cost",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 0.0,
                ),
                SizedBox(
                  height: 40.0,
                  width: 160.0,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //  prefixIcon: Icon(Icons.email , color: Colors.deepPurpleAccent,),
                      hintText: "Enter Freight Price",
                      hoverColor: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 70,
              width: 150,
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
              child: Center(
                child: Text(
                  "Add items",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ));
  }
}
