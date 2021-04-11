import 'package:access/Offers.dart';
import 'package:access/banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: _globalKey,
          drawer: Drawer(
              child: Column(children: [
            UserAccountsDrawerHeader(
              accountName: Text('tr'),
              accountEmail: Text('XS:100'),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.black)),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff50048e), Color(0xffb308c1)]),
              ),
            ),
            ListTile(
              title: Text(
                "HOME",
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.home,
                color: Colors.black,
                size: 25.0,
              ),
            ),
            ListTile(
              title: Text(
                "REDEEM",
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.fingerprint,
                color: Colors.black,
                size: 25.0,
              ),
            ),
            ListTile(
              title: Text(
                "MY COUPONS",
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.card_giftcard,
                color: Colors.black,
                size: 25.0,
              ),
            ),
            ListTile(
              title: Text(
                "TRANSCATIONS",
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.access_time,
                color: Colors.black,
                size: 25.0,
              ),
            ),
            ListTile(
              title: Text(
                "TRANSFER POINTS",
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.phone_callback_outlined,
                color: Colors.black,
                size: 25.0,
              ),
            ),
            ListTile(
              title: Text(
                "CONTACT US",
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.perm_contact_cal,
                color: Colors.black,
                size: 25.0,
              ),
            ),
            ListTile(
              title: Text(
                "PRIVACY POLICY",
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.verified_user_sharp,
                color: Colors.black,
                size: 25.0,
              ),
            ),
            ListTile(
              title: Text(
                "TERMS ANS CONDITIONS",
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.picture_as_pdf,
                color: Colors.black,
                size: 25.0,
              ),
            ),
            ListTile(
              title: Text(
                "LOG OUT",
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.logout,
                color: Colors.black,
                size: 25.0,
              ),
            ),
          ])),
          bottomNavigationBar: BottomNavigationBar(
            selectedFontSize: 12.0,
            iconSize: 20.0,
            currentIndex: 0,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                title: Text(
                  "HOME",
                  style: TextStyle(color: Colors.black),
                ),
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                  title: Text(
                    "REDEEM",
                    style: TextStyle(color: Colors.black),
                  ),
                  icon: Icon(
                    Icons.fingerprint,
                    color: Colors.black,
                  )),
              BottomNavigationBarItem(
                  title: Text(
                    "COUPONS",
                    style: TextStyle(color: Colors.black),
                  ),
                  icon: Icon(
                    Icons.card_giftcard,
                    color: Colors.black,
                  )),
              BottomNavigationBarItem(
                  //label: "hi",
                  title: Text(
                    "PROFILE",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                  )),
            ],
          ),
          body: SingleChildScrollView(
                      child: Container(
              height: 630.0,
              width: 500.0,
              color: Colors.blue,
              child: Column(
                children: [
                  Container(
                    height: 300.0,
                    width: 500.0,
                    color: Colors.white,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 20.0,
                          left: 5.0,
                          child: IconButton(
                              icon: Icon(
                                Icons.menu,
                                color: Color(0xff50048e),
                                size: 50.0,
                              ),
                              onPressed: () {
                                _globalKey.currentState.openDrawer();
                              }),
                        ),
                        Positioned(
                          top: 120,
                          left: 20,
                          child: Text(
                            "Hello\ntr\nWelcome back",
                            style: TextStyle(
                                color: Color(
                                  0xff733d77,
                                ),
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          top: 250,
                          left: 20,
                          child: Container(
                              height: 40.0,
                              width: 300.0,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey, offset: Offset(1, 2))
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 15.0),
                                    hintText: "Search",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    suffixIcon: Icon(
                                      Icons.search,
                                      color: Colors.black,
                                    )),
                              )),
                        ),
                        Positioned(
                          top: 50.0,
                          left: 180.0,
                          child: Container(
                            height: 150.0,
                            width: 150.0,
                            child: Image.asset('asset/icon.JPG'),
                          ),
                        ),
                        Positioned(
                          top: 205.0,
                          left: 180.0,
                          child: Container(
                            height: 40.0,
                            width: 140.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                  colors: [Color(0xff50048e), Color(0xffb308c1)]),
                            ),
                            child: Center(
                                child: Text(
                              "100 xs",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 330.0,
                    width: 500.0,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          width: 330.0,
                          height: 30.0,
                          child: Text(
                            "Access Picks",
                            style: TextStyle(
                                color: Color(0xff50048e),
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        ),
                        Container(
                          
                            constraints: BoxConstraints.expand(
                          height: 130,  
                        ),
                        child: Center(child: BannerView()),),
                        SizedBox(height: 10.0,),
                         Container(
                          width: 330.0,
                          height: 30.0,
                          child: Text(
                            "Hot Coupons",
                            style: TextStyle(
                                color: Color(0xff50048e),
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                        ),
                        Container(height: 100.0,
                        padding: EdgeInsets.all(10.0),
                        child: OffersView(),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
