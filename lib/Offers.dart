import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OffersView extends StatefulWidget {
  @override
  _OffersViewState createState() => _OffersViewState();
}

class _OffersViewState extends State<OffersView> {
  Future<List> banner()async{
    try{
    var dio=Dio();
     final responce= await dio.get("https://adb.brpaccess.com/api/offerdetails?offer_id=159");
       Map<String, dynamic> map = new Map<String, dynamic>.from(responce.data);
       print(map);
      //Map<String, dynamic> data = map["data"];
      //List<dynamic> resl=data["offer_type"];
      //List<dynamic> resld=data["1"];
      //return resld;
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
    return FutureBuilder<List>(
      future: banner(),
      builder: (context,snapshot){
      if(snapshot.hasError){
        print("Error" + snapshot.error.toString());
      }
      return snapshot.hasData ? OffViews(lists: snapshot.data,):CircularProgressIndicator();
    });
  }
}
class OffViews extends StatelessWidget {
  final List lists;

  const OffViews({Key key, this.lists}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lists==null ? 0:lists.length,
      itemBuilder: (context,i){
            return Container(
              child:Text(lists[i]["name"]),
            );
      },
     
    );
  }
}

