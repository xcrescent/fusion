import 'package:flutter/material.dart';
import 'package:fusion/auth/auth_service.dart';
import 'package:fusion/db/db_controller.dart';
import 'package:fusion/db/http_controller.dart';
import 'package:fusion/utils/const.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AddWareHouse extends StatefulWidget {
  const AddWareHouse({super.key});

  @override
  State<AddWareHouse> createState() => _AddWareHouseState();
}

class _AddWareHouseState extends State<AddWareHouse> {
  final user = firebaseAuth.currentUser?.uid;
  TextEditingController wareHouseNameController = TextEditingController();
  TextEditingController wareHouseLocationController = TextEditingController();
  late Future<Countries> futureCountry;
  String countries = '';
  void _printLatestValue() {
    var t = wareHouseLocationController.text.toLowerCase();
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
    wareHouseLocationController.addListener(_printLatestValue);

    futureCountry = HttpController().getCountryFunc(countries);

    // citiesData().fetchData();
  }

  @override
  void dispose() {
    super.dispose();
    wareHouseLocationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var futureCity =
        HttpController().getCountryFunc(wareHouseLocationController.text);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff5956E9),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  cursorColor: Color(0xff5956E9),
                  decoration: const InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff5956E9),
                        ),
                      ),
                      labelStyle: TextStyle(color: Color(0xff5956E9)),
                      labelText: 'Warehouse Name',
                      prefixIcon: Icon(
                        Icons.home,
                        color: Color(0xff5956E9),
                      )),
                  validator: ((value) {
                    if (value!.isEmpty) {
                      return "Warehouse Name is empty";
                    }
                    return null;
                  }),
                  controller: wareHouseNameController,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  cursorColor: Color(0xff5956E9),
                  decoration: const InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff5956E9),
                        ),
                      ),
                      labelStyle: TextStyle(color: Color(0xff5956E9)),
                      labelText: 'Location',
                      prefixIcon: Icon(
                        Icons.my_location,
                        color: Color(0xff5956E9),
                      )),
                  validator: ((value) {
                    if (value!.length < 3) {
                      return "Location is empty";
                    }
                    return null;
                  }),
                  controller: wareHouseLocationController,
                ),
                const SizedBox(
                  height: 20,
                ),
                FutureBuilder(
                    future: futureCountry,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        int x = 0;
                        if (snapshot.data!.countries.length > 30) {
                          x = 30;
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
                                wareHouseLocationController.text =
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
                ElevatedButton(
                  onPressed: () async {
                    // var x = await HttpController().verifyCountryCode(wareHouseLocationController.text);
                    // if (x == "true") {
                      await DBController().createWarehouse(
                          user,
                          wareHouseNameController.text,
                          wareHouseLocationController.text);
                      if (!mounted) return;
                      Navigator.of(context).pop();
                    // } else {
                    //   if (!mounted) return;
                    //   showSnackBarr("Please select a country code", context);
                    // }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff5956E9),
                  ),
                  child: Text(
                    "Create Warehouse",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
