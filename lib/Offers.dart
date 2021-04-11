import 'dart:convert';

import 'package:access/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OffersView extends StatefulWidget {
  @override
  _OffersViewState createState() => _OffersViewState();
}

class _OffersViewState extends State<OffersView> {
  Map<String, dynamic> res;
   Map<String, dynamic> off;
  var rds;
  var kk;
  Future<List> offer() async {
    try {
      var dio = Dio();
      final responce = await dio
          .get("https://adb.brpaccess.com/api/offerdetails?offer_id=159");
      Map<String, dynamic> map = new Map<String, dynamic>.from(responce.data);
      res = map["data"]["result"];
      off=map["data"]["offer_type"]["3"];
    } on Exception catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    offer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var title = res["title"];
    var rd = res["img"];
    var desc = res["description"];
    var start = res["start_on"];
    var stop = res["end_on"];
  
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FlatButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      contentPadding: EdgeInsets.all(10.0),
                      content: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 400.0,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30.0,
                              ),
                              Text(
                                "$title",
                                style: TextStyle(
                                    color: Color(0xff50048e),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(height: 20.0),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black54)),
                                height: 100,
                                width: 100.0,
                                child: Text("image"),
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              Container(
                                height: 160.0,
                                width: 270,
                                color: Color(0xff50048e),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 10.0,
                                      left: 5.0,
                                      child: Text(
                                        "5% OFF Mural Service ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Positioned(
                                      top: 50.0,
                                      left: 5.0,
                                      child: Text(
                                        "Description:$desc ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Positioned(
                                      top: 110.0,
                                      left: 5.0,
                                      child: Icon(Icons.location_on,
                                          color: Colors.white),
                                    ),
                                    Positioned(
                                      top: 115.0,
                                      left: 35.0,
                                      child: Text(
                                        "All",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Positioned(
                                      top: 110.0,
                                      left: 140.0,
                                      child: Text(
                                        "Start:$start",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Positioned(
                                      top: 130.0,
                                      left: 140.0,
                                      child: Text(
                                        "Expiry:$stop",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Confirm to collect coupon for",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19),
                              ),
                              Text(
                                "100xs points",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19),
                              ),
                            ],
                          )),
                      actions: [
                        Container(
                            height: 40.0,
                            width: 300.0,
                            child: Row(
                              children: [
                                SizedBox(width:30.0),
                                FlatButton(
                                    onPressed: () {},
                                    child: Text(
                                      "YES",
                                      style: TextStyle(
                                          color: Color(0xff50048e),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  width: 70.0,
                                ),
                                FlatButton(
                                    onPressed: () {
                                      HomeScreen();
                                    },
                                    child: Text(
                                      "No",
                                      style: TextStyle(
                                          color: Color(0xff50048e),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            )),
                      ],
                    );
                  });
            },
            child: Container(
              height: 70.0,
              width: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.black87),
              ),
              child: Center(child: Text("$rds")),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
    );
  }
}
