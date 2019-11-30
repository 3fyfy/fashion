import 'package:flutter/material.dart';
import 'product_details.dart';


var product_list=[
  [{
    "name":"T- shirt",
    "picture":"images/products/blazer1.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"T- shirt",
    "picture":"images/products/blazer2.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"T- shirt",
    "picture":"images/products/dress1.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"T- shirt",
    "picture":"images/products/dress2.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"T- shirt",
    "picture":"images/products/hills1.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"T- shirt",
    "picture":"images/products/hills2.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"T- shirt",
    "picture":"images/products/pants2.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"T- shirt",
    "picture":"images/products/skt1.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"T- shirt",
    "picture":"images/products/skt2.jpeg",
    "old_price":200,
    "price":150

  },],
  [{
    "name":"shoe",
    "picture":"images/products/blazer1.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"shoe",
    "picture":"images/products/blazer2.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"shoe",
    "picture":"images/products/dress1.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"shoe",
    "picture":"images/products/dress2.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"shoe",
    "picture":"images/products/hills1.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"shoe",
    "picture":"images/products/hills2.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"shoe",
    "picture":"images/products/pants2.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"shoe",
    "picture":"images/products/skt1.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"shoe",
    "picture":"images/products/skt2.jpeg",
    "old_price":200,
    "price":150

  },],
  [{
    "name":"jeans",
    "picture":"images/products/blazer1.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"jeans",
    "picture":"images/products/blazer2.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"jeans",
    "picture":"images/products/dress1.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"jeans",
    "picture":"images/products/dress2.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"jeans",
    "picture":"images/products/hills1.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"jeans",
    "picture":"images/products/hills2.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"jeans",
    "picture":"images/products/pants2.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"jeans",
    "picture":"images/products/skt1.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"jeans",
    "picture":"images/products/skt2.jpeg",
    "old_price":200,
    "price":150

  },],
[
  {
    "name":"blazer one",
    "picture":"images/products/blazer1.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"blazer two",
    "picture":"images/products/blazer2.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"dress one",
    "picture":"images/products/dress1.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"dress two",
    "picture":"images/products/dress2.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"hills one",
    "picture":"images/products/hills1.jpeg",
    "old_price":200,
    "price":150

  },
  {
    "name":"hills two",
    "picture":"images/products/hills2.jpeg",
    "old_price":200,
    "price":150

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
    "price":150

  },
  {
    "name":"skt two",
    "picture":"images/products/skt2.jpeg",
    "old_price":200,
    "price":150

  },
],  

  
];

class Categories extends StatefulWidget {
  final ind_cat;
  Categories(this.ind_cat);
  @override
  _CategoriesState createState() => _CategoriesState(ind_cat);
}

class _CategoriesState extends State<Categories> {
    final ind_cat;

  _CategoriesState(this.ind_cat);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Text("Fash App"),
        centerTitle: true,
        backgroundColor:Colors.red,
        actions: <Widget>[
          IconButton( 
            icon:Icon(Icons.search),
            onPressed: (){} ,
            ),
        ],
      ),
   body: GridView.builder(
      itemCount: product_list[ind_cat%product_list.length].length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2) ,
      itemBuilder: (BuildContext context,int index){
        return single_prod(name_prod: product_list[ind_cat%product_list.length][index]['name'],
        img_prod: product_list[ind_cat%product_list.length][index]['picture'],
        old_price: product_list[ind_cat%product_list.length][index]['old_price'],
        price: product_list[ind_cat%product_list.length][index]['price']);
      },
      

    ));
  }
}



class single_prod extends StatelessWidget {
  final String name_prod;
  final String img_prod;
  final int old_price;
  final int price;

  single_prod({
    this.name_prod,
    this.img_prod,
    this.old_price,
    this.price
  });
  




  @override
  Widget build(BuildContext context) {
    return Card(
      child:InkWell(onTap: (){
  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>product_details(
    name_prod_details: name_prod,
    img_prod_details: img_prod,
    old_price_prod_details: old_price,
    price_prod_details: price,)));
      },
      child: GridTile(
        footer:Container(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Expanded(child: Text(name_prod ,style: TextStyle(fontWeight:FontWeight.bold ),)),
            Text(" \$$price ",style:TextStyle(color: Colors.red,fontWeight:FontWeight.w800),),
           
          
            ],
            ),
        ) ,
        child: Image.asset(img_prod,fit:BoxFit.cover),

      ),
      )
    );
  }
}