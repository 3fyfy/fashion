import 'package:flutter/material.dart';
import 'UI/Home.dart';
import 'UI/Pages/product_details.dart';
import 'UI/Pages/Login.dart';
import 'UI/Spalsh _fash.dart';


void main(List<String> args) {

  runApp(
    MyApp()

  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Splash_fash(),


    );

  }
}