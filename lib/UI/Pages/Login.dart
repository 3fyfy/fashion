import 'package:flutter/material.dart';

import '../Home.dart';
import 'Register.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


  Widget _buildTextField(String hintText,IconData icon,bool secure)
  {
    return Padding(
      padding: const EdgeInsets.only(top: 20,right: 25,left: 15),
      child: TextFormField(
        obscureText: secure,

        decoration: InputDecoration(
            hintText: hintText,

            border:UnderlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid,)),

            //OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.none,color: Colors.white)),
            hintStyle: TextStyle(fontSize: 16),
            prefixIcon: Icon(icon),
       ),

        cursorColor: Colors.red,

      ),
    );
  }


  Widget _build_bodylogin(){
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
  return  ListView(
      children: <Widget>[
        Container(
          width: width,
          height: height,
          color: Colors.red,
          

          child: Padding(
            padding: const EdgeInsets.only(top:30,bottom:120,right: 20,left: 20),
            child: Container(
              height: height,
              decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius: BorderRadius.all(Radius.circular(6))

              ),
              child: ListView(
                children: <Widget>[
                  _buildTextField("اسم المستخدم او البريد الالكتروني", Icons.person, false),
                  _buildTextField("كلمة المرور", Icons.lock, true),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,right: 25,left: 15),
                    child: Row(
                      children: <Widget>[
                        InkWell(
                            onTap: (){},
                            child: Text("نسيت كلمة المرور",style: TextStyle(fontSize: 15),))
                      ],
                    ),

                  ),
                 Padding(
        padding: const EdgeInsets.only(top: 10,right: 25,left: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                  },
                  child: Container(
                      width: 140,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(color:Colors.red,style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(50))

                      ),
                      child: Container(
                        width: 130,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.white,style: BorderStyle.solid),
                            borderRadius: BorderRadius.all(Radius.circular(50))


                        ),
                        child: Center(

                            child: Text("تسجيل الدخول",style: TextStyle(fontSize: 20,color: Colors.white),overflow: TextOverflow.ellipsis,textAlign:TextAlign.center,)),
                      ))),
            )
          ],
        ),

      ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("لا امتلك حساب",style: TextStyle(fontSize: 15),),

                        SizedBox(
                          width: 10,
                        ),

                        InkWell(
                          onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                          },
                          child: Text("سجل الان",style: TextStyle(fontSize: 15,color: Colors.red,),),
                        )

                      ],
                    ),
                  )

                ],
              ),

            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.white ,

          title: Text("تسجيل الدخول",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,

          ),),
          centerTitle: true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.arrow_back_ios,textDirection: TextDirection.ltr
              ,), onPressed: (){  Navigator.pop(context);
            }),
          ],
        ),


        body:_build_bodylogin()

      ),
    );
  }
}
