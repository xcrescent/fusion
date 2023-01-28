import 'package:flutter/material.dart';
import 'package:fusion/db/db_controller.dart';
import 'package:fusion/db/http_controller.dart';
import 'package:fusion/utils/const.dart';

class AddItems extends StatefulWidget {
  const AddItems({super.key, required this.warehouseId});
  final String warehouseId;
  @override
  State<AddItems> createState() => _AddItemsState();
}

class _AddItemsState extends State<AddItems> {
  TextEditingController commodityController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController volumeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff5956E9),
          title: const Text(
            "Enter Your Details for Shipping",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              // Row(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(15.0),
              //       child: Text(
              //         "1.Country",
              //         style: TextStyle(
              //           fontSize: 20.0,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //     ),

              //     SizedBox(
              //       width: 39.0,
              //     ),
              //     SizedBox(
              //       height: 40.0,
              //       width: 160.0,
              //       child: TextFormField(
              //         controller: countryController,
              //         decoration: InputDecoration(
              //           border: OutlineInputBorder(),
              //           //  prefixIcon: Icon(Icons.email , color: Colors.deepPurpleAccent,),
              //           hintText: "Enter Country ",
              //           hoverColor: Colors.red,
              //         ),
              //       ),
              //     ),
              //     SizedBox(
              //       width: 10.0,
              //     ),
              //   ],
              // ),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "1.Commodity",
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
                      controller: commodityController,
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
                      "2.Quantity",
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
                      controller: quantityController,
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
                      "3.Category",
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
                      controller: categoryController,
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
                      "4.Volume",
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
                      controller: volumeController,
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
              // Row(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(15.0),
              //       child: Text(
              //         "6.Distance",
              //         style: TextStyle(
              //           fontSize: 20.0,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //     ),
              //     SizedBox(
              //       width: 30.0,
              //     ),
              //     SizedBox(
              //       height: 40.0,
              //       width: 160.0,
              //       child: TextField(
              //         decoration: InputDecoration(
              //           border: OutlineInputBorder(),
              //           //  prefixIcon: Icon(Icons.email , color: Colors.deepPurpleAccent,),
              //           hintText: "Enter Distance ",
              //           hoverColor: Colors.red,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // Row(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(15.0),
              //       child: Text(
              //         "7.Freight Cost",
              //         style: TextStyle(
              //           fontSize: 20.0,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //     ),
              //     SizedBox(
              //       height: 40.0,
              //       width: 160.0,
              //       child: TextField(
              //         decoration: InputDecoration(
              //           border: OutlineInputBorder(),
              //           //  prefixIcon: Icon(Icons.email , color: Colors.deepPurpleAccent,),
              //           hintText: "Enter Freight Price",
              //           hoverColor: Colors.red,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              SizedBox(
                height: 30.0,
              ),
              InkWell(
                onTap: (() async {
                  final user = firebaseAuth.currentUser?.uid;
                  await DBController()
                      .createItemInWarehouse(user, widget.warehouseId, commodityController.text,quantityController.text,categoryController.text,volumeController.text);
                }),
                child: Container(
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
              ),
            ],
          ),
        ));
  }
}
