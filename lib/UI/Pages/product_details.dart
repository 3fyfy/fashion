import 'package:flutter/material.dart';



import '../component/product.dart';

class product_details extends StatefulWidget {

  final String name_prod_details;
  final String img_prod_details;
  final int old_price_prod_details;
  final int price_prod_details;

  product_details({
    this.name_prod_details,
    this.img_prod_details,
    this.old_price_prod_details,
    this.price_prod_details
  });
  @override
  _product_detailsState createState() => _product_detailsState();
}

class _product_detailsState extends State<product_details> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //--------------APPBar-----------------------//
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

       //--------------Body-----------------------//

      body: ListView(

        
      children: <Widget>[
 /////////////////////// Card Image /////////////////////
    Container(
          height: 300.0,
          child: Card(
          
margin:  EdgeInsets.only(top: 0,bottom: 0),
            
            child: GridTile(
              
              
              footer: Container(
                
                color: Colors.white70,
                child: Row(
                  
                   children: <Widget>[
                     Padding(padding: EdgeInsets.all(20.0),child:Text(widget.name_prod_details,style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20.0),), ),
                     
                      Padding(padding: EdgeInsets.all(8.0),child:Text("\$${widget.old_price_prod_details}",style: TextStyle( color: Colors.black38,fontWeight:FontWeight.w300,decoration: TextDecoration.lineThrough))),

                       Padding(padding: EdgeInsets.only(left:30.0),child:Text("\$${widget.price_prod_details}",style:TextStyle(color: Colors.red,fontWeight:FontWeight.w800),), ),

             
                   ],
                  
                ),
              ),
              child:Image.asset(widget.img_prod_details,fit: BoxFit.contain,) ,
            ),
          ),
        ),
          //------------dropdown-------------------//
   Row(
         
             
                  
            children: <Widget>[
              droplist("Size"),
              droplist("Color"),
              droplist("Qty"),
              
 
            ],
          ),
          //--------------Buy Now----------------------//
   Row(
             children: <Widget>[
             Expanded(
                 child: InkWell(
                              onTap: (){},
                    child: Container(

                       color: Colors.red,
                       height: 40,
                        child: Center(
                          child: Text("Buy now",style:TextStyle(color: Colors.white)),
                                      ),
                                      ),
                                 ),
                       ),
             
             IconButton(icon:Icon( Icons.add_shopping_cart),onPressed: (){},),
            
             IconButton(icon:Icon( Icons.favorite_border),onPressed: (){},),
            
               
                                ],
               ),

   ListTile(
     title: Text("Product details",style: TextStyle(fontWeight: FontWeight.bold),),
     subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
   ),

   Divider(), 
   
bottompage("Product Name", "Red Adress"),
bottompage("Product Brand", "Brand X"),
bottompage("Product Condition", "New"),

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



//methods

Widget droplist(String name)
{
               
return Expanded(
  
  child:   MaterialButton(

    onPressed: (){
      showDialog(context: context,
      builder:(context){
        
       return AlertDialog(
          title: Text("$name"),
          content: Text("Choose the $name"),
          actions: <Widget>[
            MaterialButton(
              onPressed: (){
                Navigator.of(context).pop(context);

              },
              child: Text("Close"),
            )
          ],
        );

      }
      
       );
    },
  
  color: Colors.white,
  
  textColor: Colors.grey,
  
  elevation: .2,
  
  child: Row(
  
  
  
    children: <Widget>[
  
      Expanded(child: Text("$name")),
  
      Expanded(child: Icon(Icons.arrow_drop_down)),
  
    ],
  
  ),
  
    
  
  ),
);
}


///////////////////
Widget bottompage(String name,String details){
  return Row(
     children: <Widget>[
       Padding(padding: EdgeInsets.fromLTRB(12,5,5,5),child: Text("$name",style: TextStyle(color: Colors.grey),),),
        Padding(padding: EdgeInsets.fromLTRB(12,5,5,5),child: Text("$details"),),


     ],
   );
}


}

