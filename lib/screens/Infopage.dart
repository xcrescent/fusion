import 'package:flutter/material.dart';
import 'package:fusion/widgets/warehouse_items.dart';
import 'package:fusion/widgets/warehouse_list.dart';

class Infopage extends StatefulWidget {
  const Infopage({
    super.key,
    required this.docId
  });
  final docId;
  @override
  State<Infopage> createState() => _InfopageState();
}

class _InfopageState extends State<Infopage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Image.asset('photos/product.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.white,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              WareHousesItems(docId: widget.docId,),                            
                              SizedBox(
                                height: 12,
                              ),
                              
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1,
                      width: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff5956E9),
        onPressed: () {
          // DBController().createWarehouse(user, warehousename, country)
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
