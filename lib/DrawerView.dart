import 'package:flutter/material.dart';
class DrawerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
          ]));
  }
}