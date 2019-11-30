import 'package:flutter/material.dart';

import '../component/cart_product.dart';

class cart extends StatefulWidget {
  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        centerTitle: true,
        backgroundColor: Colors.red,
        leading: IconButton(
    icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,),
    onPressed: (){
     Navigator.of(context).pop();

    },
  ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          )

        ],
      ),

     body:Cart_product() ,


     bottomNavigationBar: Container(
       padding: EdgeInsets.all(0),
       margin: EdgeInsets.all(0),
       height: 55,
       color: Colors.white,
       child: Row(
children: <Widget>[
  Expanded(
    
    child: ListTile(
     
      title: Text("Total"),
      subtitle: Text("\$230"),
    ),
  ),
  Expanded(
    child: MaterialButton(
      onPressed: (){},
      color: Colors.red,
      child: 
         Text("Check Out",style: TextStyle(color: Colors.white),),
      
    ),
  )
],

       ),
     ),
      
    );
  }
}