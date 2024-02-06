import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fusion/screens/Infopage.dart';
import 'package:fusion/utils/const.dart';
import 'package:google_fonts/google_fonts.dart';

class WareHouses extends StatefulWidget {
  @override
  State<WareHouses> createState() => _WareHousesState();
}

class _WareHousesState extends State<WareHouses> {
  @override
  Widget build(BuildContext context) {
    final uid = firebaseAuth.currentUser?.uid;
    final Stream<QuerySnapshot> users = FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .collection("warehouses")
        .snapshots();

    return StreamBuilder<QuerySnapshot>(
        stream: users,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading");
          }
          if (snapshot.hasData && snapshot.data!.docs.isEmpty) {
            return const Text('Empty');
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < snapshot.data!.docs.length; i++)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //    crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('photos/Frame 2976.png'),
                      radius: 40,
                    ),
                    // SizedBox(
                    //   width: 10.0,
                    // ),
                    Column(
                      children: [
                        Text(
                          snapshot.data!.docs[i]["warehouseName"],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                        Text(
                          snapshot.data!.docs[i]["country"],
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: GoogleFonts.poppins().fontFamily),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => Infopage(docId:snapshot.data!.docs[i].id))));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff5956E9),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ))),
                      child: const Text(
                        'CLICK HERE',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              const SizedBox(
                width: 5,
              ),
            ],
          );

          //           ,
          //           Column(
          // children: [
          //   Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //     children: [
          //       CircleAvatar(
          //         backgroundColor: Colors.white,
          //         backgroundImage: AssetImage('photos/Frame 2976.png'),
          //         radius: 40,
          //       ),
          //       Column(
          //         children: [
          //           Text(
          //             snapshot.data!.docs[index]["warehouseName"],
          //             style: TextStyle(
          //               fontSize: 20,
          //               fontWeight: FontWeight.bold,
          //               fontFamily: GoogleFonts.poppins().fontFamily,
          //             ),
          //           ),
          //             Text(
          //               snapshot.data!.docs[index]["country"],
          //               style: TextStyle(
          //                   fontSize: 18,
          //                   fontWeight: FontWeight.w500,
          //                   fontFamily: GoogleFonts.poppins().fontFamily),
          //             ),
          //           ],
          //         ),
          //         ElevatedButton(
          //           onPressed: () {
          //             Navigator.pushNamed(context, "/infopage");
          //           },
          //           style: ElevatedButton.styleFrom(
          //               backgroundColor: Color(0xff5956E9),
          //               shape: RoundedRectangleBorder(
          //                   borderRadius: BorderRadius.circular(
          //                 10,
          //               ))),
          //           child: const Text(
          //             'CLICK HERE',
          //             style: TextStyle(color: Colors.white),
          //           ),
          //         ),
          //       ],
          //     ),
          //     const SizedBox(
          //       width: 5,
          //     ),
          //   ],
          // );
          // }));
        });
  }
}