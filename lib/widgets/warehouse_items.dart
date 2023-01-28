import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fusion/utils/const.dart';

class WareHousesItems extends StatefulWidget {
  const WareHousesItems({super.key, required this.docId});
  final String docId;
  @override
  State<WareHousesItems> createState() => _WareHousesItemsState();
}

class _WareHousesItemsState extends State<WareHousesItems> {
  late Map<String,dynamic> counter;
  @override
  Widget build(BuildContext context) {
    final uid = firebaseAuth.currentUser?.uid;
    final Stream<QuerySnapshot> users = FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .collection("warehouses")
        .doc(widget.docId)
        .collection("items")
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < snapshot.data!.docs.length; i++)
                
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'photos/shoes.png',
                        ),
                        radius: 30,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          snapshot.data!.docs[i]["itemName"],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
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
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                            Text(counter[snapshot.data!.docs[i].id].toString()),
                            IconButton(
                              onPressed: () {

                              },
                              
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              SizedBox(
                height: 12,
              ),
            ],
          );
        });
  }
}
