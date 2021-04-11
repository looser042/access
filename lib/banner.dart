import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BannerView extends StatefulWidget {
  @override
  _BannerViewState createState() => _BannerViewState();
}

class _BannerViewState extends State<BannerView> {
  Future<List> banner()async{
    try{
    var dio=Dio();
     final responce= await dio.get("https://adb.brpaccess.com/api/homepage?mem_id=48&latitude=10.8919839&longitude=79.1857141&app_location=0");
       Map<String, dynamic> map = new Map<String, dynamic>.from(responce.data);
      List<dynamic> data = map["data"]["banners"];
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
    return FutureBuilder<List>(
      future: banner(),
      builder: (context,snapshot){
      if(snapshot.hasError){
        print("Error" + snapshot.error.toString());
      }
      return snapshot.hasData ? View(lists: snapshot.data,):Center(child: Text("Loading..."));
    });
  }
}
class View extends StatelessWidget {
  final List lists;

  const View({Key key, this.lists}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Swiper(
      autoplay: true,
      itemCount: lists==null ? 0:lists.length,
      viewportFraction: 1.0,
      scale: 0.8,
      itemBuilder: (BuildContext context,int i){
        return Text(lists[i]["image"]);
      },
      
    );
  }
}