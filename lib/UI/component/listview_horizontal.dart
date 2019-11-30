import 'package:flutter/material.dart';
import '../Pages/CategoriesGridList.dart';

class horizontallist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,

      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[

         Category(image_location:'images/cats/tshirt.png',image_caption:'Tshirt',index: 0,),
          Category(image_location:'images/cats/shoe.png',image_caption:'shoe',index: 1,),
         Category(image_location:'images/cats/jeans.png',image_caption:'jeans',index: 2,),
          Category(image_location:'images/cats/informal.png',image_caption:'informal',index: 3,),
         Category(image_location:'images/cats/formal.png',image_caption:'formal',index: 4,),
         Category(image_location:'images/cats/dress.png',image_caption:'dress',index: 5,),
        Category(image_location:'images/cats/accessories.png',image_caption:'accessories',index: 6,),
        ],

      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  final int index;
  Category({this.image_location,this.image_caption,this.index});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){
       Navigator.of(context).push(MaterialPageRoute( builder:(context)=>  Categories(index)));
        },
        child: Container( 
          width: 100.0,
      
      child: ListTile(
        
          title:Image.asset(image_location,height: 40.0,width: 100.0,),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(image_caption,style: TextStyle(fontSize: 13.0),),
          ) ,
        ),
      ),
      
    )
    );
  }
}