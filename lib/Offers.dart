import 'dart:convert';

import 'package:access/AlertBox.dart';
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
  Future<Map> banner()async{
    try{
    var dio=Dio();
     final responce= await dio.get("https://adb.brpaccess.com/api/offerdetails?offer_id=159");
       Map<String, dynamic> map = new Map<String, dynamic>.from(responce.data);
      Map data = map["data"]["result"];
      return data;
    }on Exception catch(e){
      print(e);
    }
  }
  @override
  void initState() {
    banner();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   
    return FutureBuilder<Map>(
      future: banner(),
      builder: (context,snapshot){
      if(snapshot.hasError){
        print("Error" + snapshot.error.toString());
      }
      return snapshot.hasData ? ViewOffer(list: snapshot.data,):Center(child: Text("Loading..."));
    });
  }
}


class ViewOffer extends StatelessWidget {
  final Map list;

  const ViewOffer({Key key, this.list}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var img=list["img"];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FlatButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertBoxs();
                  });
            },
            child: Container(
              height: 70.0,
              width: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.black87),
              ),
              child: Center(child: Text("$img")),
            ),
          ),
         
          FlatButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertBoxs();
                  });
            },
            child: Container(
              height: 70.0,
              width: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.black87),
              ),
              child: Center(child: Text("$img")),
            ),
          ),
         
          FlatButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertBoxs();
                  });
            },
            child: Container(
              height: 70.0,
              width: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.black87),
              ),
              child: Center(child: Text("$img")),
            ),
          ),
          
          FlatButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertBoxs();
                  });
            },
            child: Container(
              height: 70.0,
              width: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.black87),
              ),
              child: Center(child: Text("$img")),
            ),
          ),
          
        ],
      ),
    );
  }
}
