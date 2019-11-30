import 'package:flutter/material.dart';
class Cart_product extends StatefulWidget {
  @override
  _Cart_productState createState() => _Cart_productState();
}

class _Cart_productState extends State<Cart_product> {
  var product_on_the_cart=[
     {
    "name":"dress one",
    "picture":"images/products/dress1.jpeg",
    "old_price":200,
    "price":150,
    "size":"L",
    "color":"red",
    "quantity":2

  },
  {
    "name":"dress two",
    "picture":"images/products/dress2.jpeg",
    "old_price":200,
    "price":150,
    "size":"L",
    "color":"red",
    "quantity":2

  },
  {
    "name":"hills one",
    "picture":"images/products/hills1.jpeg",
    "old_price":200,
    "price":150,
    "size":"L",
    "color":"red",
    "quantity":2

  },
  {
    "name":"hills two",
    "picture":"images/products/hills2.jpeg",
    "old_price":200,
    "price":150,
    "size":"L",
    "color":"red",
    "quantity":2

  },
  {
    "name":"pants two",
    "picture":"images/products/pants2.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"skt one",
    "picture":"images/products/skt1.jpeg",
    "old_price":200,
    "price":150,
    "size":"L",
    "color":"Yellow",
    "quantity":1

  },
  {
    "name":"skt two",
    "picture":"images/products/skt2.jpeg",
    "old_price":200,
    "price":150,
    "size":"Xl",
    "color":"red",
    "quantity":2

  },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context,index){
        return Text("data");
      },
    );
  }
}

class single_product extends StatelessWidget {
  final String name_prod;
  final String img_prod;
  final int old_price;
  final int price;
     final String size_prod;
  final String color_prod;
  final int quantity_prod;
  

  single_product({
    this.name_prod,
    this.img_prod,
    this.old_price,
    this.price,
    this.size_prod,
    this.color_prod,
    this.quantity_prod
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
