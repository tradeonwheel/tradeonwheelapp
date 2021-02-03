import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../assets.dart';
class UserOTPLogin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xff1959a9), Color(0xFF172f55)])
          ),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 30,),
                Container(
                  height:80,
                  width: MediaQuery.of(context).size.width,
                  child: SvgPicture.asset(Assets.svg_car,color: Color(0xFF021636),),
                ),
                Text('TRADE ON WHEEL',
                  style: TextStyle(
                    letterSpacing: 3.3,color: Color(0xFF021636),
                    fontSize:13,fontWeight: FontWeight.bold, ),
                ),
                SizedBox(height: 30,),
                Column(
                  children: <Widget>[
                    _loginForm(context),
                    SizedBox(height: 20,),
                    // Divider(color: Color(0xFF172f55),),
                    // SizedBox(height: 20,),
                    SizedBox(height: 20,)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
Widget _loginForm(context){
  return Container(
    margin:EdgeInsets.symmetric(horizontal: 15.0),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:6.0,bottom: 6.0),
          child: TextField(
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 0.0),
                fillColor: Color(0xfff3f3f4),
                filled: false,
                labelText: 'Password',
            ),
          ),
        ),
        _submitButton(context),
      ],
    ),
  );
}
Widget _submitButton(context) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(top: 8.0),
        padding: EdgeInsets.symmetric(vertical: 0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Color(0xFF172f55),
                  offset: Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 2)
            ],
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xFF172f55), Color(0xff1959a9)])),
        child: TextButton(
          child:Text('Login',style: TextStyle(fontSize: 20, color: Colors.white,letterSpacing: 3.0),),
          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => UserOTPLogin()),
            );
          },
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(onPressed: null, child: Text('Forgot Password',style: TextStyle(color: Colors.white60,letterSpacing: 0.8),))
        ],
      ),
    ],
  );
}