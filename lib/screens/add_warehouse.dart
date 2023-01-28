import 'package:flutter/material.dart';
import 'package:fusion/db/db_controller.dart';
import 'package:fusion/db/http_controller.dart';
import 'package:fusion/utils/const.dart';
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
  List country = [
    "ABW",
    "AFG",
    "AGO",
    "AIA",
    "ALB",
    "AND",
    "ARE",
    "ARG",
    "ARM",
    "ASM",
    "ATA",
    "ATF",
    "ATG",
    "AUS",
    "AUT",
    "AZE",
    "BDI",
    "BEL",
    "BEN",
    "BES",
    "BFA",
    "BGD",
    "BGR",
    "BHR",
    "BHS",
    "BIH",
    "BLM",
    "BLR",
    "BLZ",
    "BMU",
    "BOL",
    "BRA",
    "BRB",
    "BTN",
    "BWA",
    "CAF",
    "CAN",
    "CCK",
    "CHE",
    "CHL",
    "CHN",
    "CIV",
    "CMR",
    "COD",
    "COG",
    "COK",
    "COL",
    "COM",
    "CPV",
    "CRI",
    "CUB",
    "CUW",
    "CXR",
    "CYM",
    "CYP",
    "CZE",
    "DEU",
    "DJI",
    "DMA",
    "DNK",
    "DOM",
    "DZA",
    "ECU",
    "EGY",
    "ERI",
    "ESH",
    "ESP",
    "EST",
    "ETH",
    "FIN",
    "FJI",
    "FRA",
    "FRO",
    "FSM",
    "GAB",
    "GBR",
    "GEO",
    "GGY",
    "GHA",
    "GIB",
    "GIN",
    "GLP",
    "GMB",
    "GNB",
    "GNQ",
    "GRC",
    "GRD",
    "GRL",
    "GTM",
    "GUF",
    "GUM",
    "GUY",
    "HKG",
    "HND",
    "HRV",
    "HTI",
    "HUN",
    "IDN",
    "IMN",
    "IND",
    "IOT",
    "IRL",
    "IRN",
    "IRQ",
    "ISL",
    "ISR",
    "ITA",
    "JAM",
    "JEY",
    "JOR",
    "JPN",
    "KAZ",
    "KEN",
    "KGZ",
    "KHM",
    "KIR",
    "KNA",
    "KWT",
    "LBN",
    "LBR",
    "LBY",
    "LCA",
    "LIE",
    "LKA",
    "LSO",
    "LTU",
    "LUX",
    "LVA",
    "MAC",
    "MAR",
    "MCO",
    "MDA",
    "MDG",
    "MDV",
    "MEX",
    "MHL",
    "MKD",
    "MLI",
    "MLT",
    "MMR",
    "MNE",
    "MNG",
    "MNP",
    "MOZ",
    "MRT",
    "MSR",
    "MTQ",
    "MUS",
    "MWI",
    "MYS",
    "MYT",
    "NAM",
    "NCL",
    "NER",
    "NFK",
    "NGA",
    "NIC",
    "NIU",
    "NLD",
    "NOR",
    "NPL",
    "NRU",
    "NZL",
    "OMN",
    "PAK",
    "PAN",
    "PCN",
    "PER",
    "PHL",
    "PLW",
    "PNG",
    "POL",
    "PRI",
    "PRT",
    "PRY",
    "PSE",
    "PYF",
    "QAT",
    "REU",
    "ROU",
    "RUS",
    "RWA",
    "SAU",
    "SDN",
    "SEN",
    "SGP",
    "SGS",
    "SHN",
    "SJM",
    "SLB",
    "SLE",
    "SLV",
    "SMR",
    "SOM",
    "SPM",
    "SRB",
    "SSD",
    "STP",
    "SUR",
    "SVK",
    "SVN",
    "SWE",
    "SWZ",
    "SYC",
    "SYR",
    "TCA",
    "TCD",
    "TGO",
    "THA",
    "TJK",
    "TKL",
    "TKM",
    "TLS",
    "TON",
    "TTO",
    "TUN",
    "TUR",
    "TUV",
    "TWN",
    "TZA",
    "UGA",
    "UKR",
    "URY",
    "USA",
    "UZB",
    "VCT",
    "VEN",
    "VNM",
    "VUT",
    "WLF",
    "WSM",
    "YEM",
    "ZAF",
    "ZMB",
    "ZWE"
  ];
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
                // FutureBuilder(
                //     future: futureCity,
                //     builder: (context, snapshot) {
                //       if (snapshot.hasData) {
                //         int x = 0;
                //         if (snapshot.data!.city.length > 30)
                //           x = 30;
                //         else
                //           x = snapshot.data!.country.length;
                //         return 
                ListView.builder(
                          shrinkWrap: true,
                          itemCount: country.length,
                          controller: ScrollController(),
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                wareHouseLocationController.text =
                                    country[index];
                              },);}),
                //               child: ListTile(
                //                 title: Text(snapshot.data!.city[index]),
                //               ),
                //             );
                //           },
                //         );
                //       } else if (snapshot.hasError) {
                //         return Text('${snapshot.error}');
                //       }

                //       // By default, show a loading spinner.
                //       return Column(
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: const [CircularProgressIndicator()]);
                //     }),
                ElevatedButton(
                  onPressed: () {
                    DBController().createWarehouse(
                        user,
                        wareHouseNameController.text,
                        wareHouseLocationController.text);
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
