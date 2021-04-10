import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:async';
import 'package:fluttertoast/fluttertoast.dart';
import 'HomeScreen.dart';

void main(List<String> args) {
  runApp(MaterialApp(theme: ThemeData(primaryColor:Color(0xff50048e)),
  debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController number = TextEditingController();
  TextEditingController pass = TextEditingController();
  

  Future login(String phone,String password)async{
    try{
      var dio=Dio();
    final responce= await dio.get("https://adb.brpaccess.com/api/login");
    Map<String, dynamic> data = new Map<String, dynamic>.from(responce.data);
    var res=data["err_msg"];
    print(res);
    Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
     Fluttertoast.showToast(
          msg: '$res',
          textColor: Colors.white,
          gravity: ToastGravity.BOTTOM,
          toastLength: Toast.LENGTH_SHORT,
          backgroundColor: Color(0xffFFA756),
          fontSize: 15.0);

  }on Exception catch(e){
    print(e);
  }
  
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Positioned(
                  top: 50.0,
                  left: 70.0,
                  child: Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('asset/icon.JPG'))),
                  )),
              Positioned(
                  top: 250.0,
                  left: 140.0,
                  child: Text(
                    "Hello !",
                    style: TextStyle(
                      color: Color(0xff56357d),
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Positioned(
                  top: 290.0,
                  left: 45.0,
                  child: Text(
                    "Please login to your account",
                    style: TextStyle(
                      color: Color(0xff56357d),
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Positioned(
                  top: 340.0,
                  left: 25.0,
                  child: Container(
                    height: 70.0,
                    width: 300.0,
                    child: TextFormField(
                      maxLength: 10,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Your Mobile Number ',
                        hintStyle: TextStyle(fontSize: 15.0),
                        labelText: "Mobile Number",
                        labelStyle:
                            TextStyle(color: Colors.black, fontSize: 15.0),
                        prefixIcon: Icon(
                          Icons.phone_android,
                          color: Colors.black,
                        ),
                      ),
                      controller: number,
                    ),
                  )),
              Positioned(
                top: 420.0,
                left: 25.0,
                child: Container(
                  height: 70.0,
                  width: 300.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Your Password ',
                      hintStyle: TextStyle(fontSize: 15.0),
                      labelText: "Password",
                      labelStyle:
                          TextStyle(color: Colors.black, fontSize: 15.0),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: Colors.black,
                      ),
                    ),
                    controller: pass,
                  ),
                ),
              ),
              Positioned(
                top: 495.0,
                left: 230.0,
                child: GestureDetector(
                  child: Text("Forget Password ?"),
                ),
              ),
              Positioned(
                top: 560.0,
                left: 30.0,
                child: Text("No account ?"),
              ),
              Positioned(
                top: 560.0,
                left: 100.0,
                child: GestureDetector(
                  child: Text(
                    "Signup",
                    style: TextStyle(color: Colors.redAccent),
                  ),
                ),
              ),
              Positioned(
                top: 540.0,
                left: 200.0,
                child: Container(
                    height: 60.0,
                    width: 130,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0xff50048e),Color(0xffb308c1 )]),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: FlatButton(
                      onPressed: () {
                        login(number.text, pass.text);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
