import 'package:flutter/material.dart';
import 'dart:async';
import 'Home.dart';
import 'Pages/Login.dart';
class Splash_fash extends StatefulWidget {
  @override
  _Splash_fashState createState() => _Splash_fashState();
}

class _Splash_fashState extends State<Splash_fash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Login())));
  }
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        //color:Theme.of(context).accentColor,
          image: DecorationImage(image: AssetImage("images/logo spalsh.png"),fit: BoxFit.cover)


      ),

    );
  }
}
