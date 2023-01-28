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
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff5956E9),
        ),
        drawer: SafeArea(
          child: Drawer(
              backgroundColor: Color(0xff5956E9),
              child: Expanded(
                child: Stack(
                  children: [
                    Image.asset(
                      'photos/Menu.png',
                      fit: BoxFit.fill,
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 200, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.person_outline,
                                color: Colors.white38,
                                size: 45,
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/profile");
                                  },
                                  child: Text(
                                    'Profile',
                                    style: TextStyle(
                                        color: Colors.white38, fontSize: 23),
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.white38,
                                size: 40,
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/track");
                                  },
                                  child: Text(
                                    'My Orders',
                                    style: TextStyle(
                                        color: Colors.white38, fontSize: 23),
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.favorite_border,
                                color: Colors.white38,
                                size: 45,
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'WishList',
                                    style: TextStyle(
                                        color: Colors.white38,
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.settings,
                                color: Colors.white38,
                                size: 45,
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Settings',
                                    style: TextStyle(
                                        color: Colors.white38, fontSize: 23),
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, top: 250),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.exit_to_app,
                                color: Colors.white38,
                                size: 40,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Sign Out',
                                    style: TextStyle(
                                        color: Colors.white38, fontSize: 23),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),
        ),
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
