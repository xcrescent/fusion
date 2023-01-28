import 'package:flutter/material.dart';
import 'package:fusion/db/http_controller.dart';

class AddItems extends StatefulWidget {
  const AddItems({Key? key}) : super(key: key);

  @override
  State<AddItems> createState() => _AddItemsState();
}

class _AddItemsState extends State<AddItems> {
  TextEditingController countryController = TextEditingController();
  late Future<Countries> futureCountry;
  String countries = '';
  void _printLatestValue() {
    var t = countryController.text.toLowerCase();
    // futureCity = cities.where((a) => a.toString().contains(t)).toList();

    if (t.length > 1) {
      setState(() {
        countries = t;
        futureCountry = HttpController().getCountryFunc(countries);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    
    futureCountry = HttpController().getCountryFunc(countries);
    countryController.addListener(_printLatestValue);

    // citiesData().fetchData();
  }

  @override
  void dispose() {
    super.dispose();
    countryController.dispose();
  }

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
                    child: TextFormField(
                      controller: countryController,
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
              Container(
                padding: EdgeInsets.all(8),
                height: MediaQuery.of(context).size.height / 2,
                child: SingleChildScrollView(
                  child: FutureBuilder(
                      future: futureCountry,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          int x = 0;
                          if (snapshot.data!.countries.length > 10) {
                            x = 10;
                          } else {
                            x = snapshot.data!.countries.length;
                          }
                          return ListView.builder(
                            shrinkWrap: true,
                            itemCount: x,
                            controller: ScrollController(),
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  countryController.text =
                                      snapshot.data!.countries[index];
                                },
                                child: ListTile(
                                  title: Text(snapshot.data!.countries[index]),
                                ),
                              );
                            },
                          );
                        } else if (snapshot.hasError) {
                          return Text('${snapshot.error}');
                        }
                        return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [CircularProgressIndicator()]);
                      }),
                ),
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
          ),
        ));
  }
}
