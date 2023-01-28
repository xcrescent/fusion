import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fusion/db/db_controller.dart';
import 'package:fusion/utils/const.dart';
import 'package:fusion/widgets/warehouse_items.dart';
import 'package:fusion/widgets/warehouse_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // var count = 0;
  final TextEditingController _searchController = TextEditingController();
  final uid = firebaseAuth.currentUser!.uid;
  final Stream<QuerySnapshot> userStream = firebaseFirestore
      .collection('users')
      .doc(firebaseAuth.currentUser!.uid)
      .collection("warehouses")
      .snapshots();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   title: Text('Fusion'),
        // ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Image.asset('photos/home.png'),
              Container(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blue.shade50,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                    hintText: 'Search',
                    border: InputBorder.none,
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 38,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: WareHouses(),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff5956E9),
          onPressed: () {
            Navigator.of(context).pushNamed('/addWarehouse');
          },
          child: const Icon(
            Icons.add,
            size: 40,
          ),
        ),
      ),
    );
  }
}
