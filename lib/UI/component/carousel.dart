import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class image_carousel extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
     double hight_screen= MediaQuery.of(context).size.height;
    double width_screen= MediaQuery.of(context).size.width;
    return Container(
       height:hight_screen/3 ,
   child: Carousel(
     boxFit: BoxFit.cover,
     images: [
       AssetImage('images/c1.jpg'),
       AssetImage('images/m1.jpeg'),
       AssetImage('images/w1.jpeg'),
       AssetImage('images/m2.jpg'),
       AssetImage('images/w3.jpeg'),
       AssetImage('images/w4.jpeg'),
       AssetImage('images/m2.jpg'), 
       ],
       
       dotSize: 4.0,
       dotColor: Colors.transparent,
      dotBgColor: Colors.transparent,
       indicatorBgPadding: 4.0,
       autoplay: true,
       animationCurve: Curves.fastOutSlowIn,
       animationDuration: Duration(milliseconds: 1000),
   ),
    );
  }
}