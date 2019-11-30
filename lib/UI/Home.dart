import 'package:flutter/material.dart';


// my own import

import 'component/listview_horizontal.dart';
import 'component/product.dart';
import 'component/drawer.dart';
import 'component/carousel.dart';
import 'Pages/cart.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
   double hight_screen= MediaQuery.of(context).size.height;
    double width_screen= MediaQuery.of(context).size.width;

   return Scaffold(
     //---------------AppBar--------------//
appBar: AppBar(

  elevation: 0.0,
  title: Text("Fash App"),
  centerTitle: false,
  backgroundColor: Colors.red,
  

  actions: <Widget>[
    IconButton(
      icon: Icon(Icons.search,color: Colors.white,),
      onPressed: (){},
    ),
    IconButton(
      icon: Icon(Icons.shopping_cart,color: Colors.white,),
      onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>cart()));
      },
    ),

  ],
),
   
   //drawer
   drawer: drawer(),


     //---------------Body--------------//


   body: ListView(
     children: <Widget>[
       image_carousel(),
       Padding(padding: EdgeInsets.all(8.0),
       child: Text("Categories"),
       ),
       horizontallist(),
       Padding(padding: EdgeInsets.all(8.0),
       child: Text("Recent Product"),
       ),

       Container(
         height: 320.0,
         child: product() ,
       )

     ],
   ),
    );
    
    
  }
}
