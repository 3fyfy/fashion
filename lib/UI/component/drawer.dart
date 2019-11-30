import 'package:flutter/material.dart';


//my own page

import '../Pages/cart.dart';



class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
    child: ListView(
      children: <Widget>[
//              Header

       UserAccountsDrawerHeader(
          accountName:Text('3fyfy')  ,
        accountEmail:Text('afify@gmail.com') ,
       currentAccountPicture: CircleAvatar(
           backgroundImage: AssetImage("images/m2.jpg"),
           backgroundColor: Colors.grey,
           
          
         ),
         
       
       decoration: BoxDecoration(
         color: Colors.red
       ),

        ),
        
//          Body
      InkWell(
        onTap: (){},
        child: ListTile(
          title: Text("Home Page"),
          leading: Icon(Icons.home,color: Colors.red,),
         ),
      ),

      InkWell(
        onTap: (){},
        child: ListTile(
          title: Text("My Account"),
          leading: Icon(Icons.person,color: Colors.red,),
         ),
      ),

      InkWell(
        onTap: (){},
        child: ListTile(
          title: Text("My Order"),
          leading: Icon(Icons.shopping_basket,color: Colors.red,),
         ),
      ),

      InkWell(
        onTap: (){

            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>cart()));

        },
        child: ListTile(
          title: Text("Shopping Cart"),
          leading: Icon(Icons.shopping_cart,color: Colors.red,),
         ),
      ),

       InkWell(
        onTap: (){},
        child: ListTile(
          title: Text("Favorites"),
          leading: Icon(Icons.favorite,color: Colors.red,),
         ),
      ),

      Divider(),
       InkWell(
        onTap: (){},
        child: ListTile(
          title: Text("Settings"),
          leading: Icon(Icons.settings),
         ),
      ),


      InkWell(
        onTap: (){},
        child: ListTile(
          title: Text("About"),
          leading: Icon(Icons.help ,color: Colors.blue,),
         ),
      ),

       

      ],
    ),

   );
  }
}