import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trade_on_wheel/components/otpScreen.dart';
import '../assets.dart';
class UserLoginScreen extends StatefulWidget{
  @override
  _UserLoginScreenState createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends State<UserLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon:Icon(Icons.close,color: Colors.white,),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
                Container(
                  height:80,
                  width: MediaQuery.of(context).size.width,
                  child: SvgPicture.asset(Assets.svg_car,color: Colors.white,),
                ),
                Text('TRADE ON WHEEL',
                    style: TextStyle(
                        letterSpacing: 3.3,color: Colors.white,
                        fontSize:13,fontWeight: FontWeight.bold, ),
                ),
                SizedBox(height: 30,),
                Column(
                  children: <Widget>[
                    _loginForm(context),
                    SizedBox(height: 20,),
                    // Divider(color: Color(0xFF172f55),),
                    // SizedBox(height: 20,),
                    _loginWithSocial(),
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
          child: TextField(maxLines: 1,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
              contentPadding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 0.0),
                fillColor: Color(0xfff3f3f4),
                filled: false,
                labelText: 'Email or Phone',
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
      Container(height: 50,
        margin: EdgeInsets.only(top: 8.0),
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
                colors: [Color(0xFF172f55), Color(0xff1959a9)])
        ),
        child: FlatButton(
          child:Text('Continue',style: TextStyle(fontSize: 20, color: Colors.white,letterSpacing: 3.0),),
          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => OtpView(phoneNumber: '9415890976')),
            );
          },
        ),
      ),
      SizedBox(height: 20,),
      Divider(height: 2,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Or',style: TextStyle(color: Colors.white70,letterSpacing: 1.0,fontWeight: FontWeight.bold)),
          TextButton(onPressed: null, child: Text('Sign Up',style: TextStyle(color: Colors.lightBlue,letterSpacing: 1.0,fontWeight: FontWeight.bold),)),
        ],
      )
    ],
  );
}
Widget _loginWithSocial(){
  return Column(
    children:[
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            height: 40,
            decoration: BoxDecoration(
              color:Color(0xFFf7f7f7),
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Color(0xFF172f55),
                    offset: Offset(2, 4),
                    blurRadius: 5,
                    spreadRadius: 2)
              ],
            ),
            child:IconButton(icon: SvgPicture.asset(Assets.svg_gmail,color: Colors.red,), onPressed: null)
        ),
        Container(
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xFFf7f7f7),
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Color(0xFF172f55),
                    offset: Offset(2, 4),
                    blurRadius: 5,
                    spreadRadius: 2)
              ],
            ),
            child: IconButton(icon: SvgPicture.asset(Assets.svg_apple,color: Colors.black,), onPressed: null)
        ),
        Container(
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xFFf7f7f7),
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Color(0xFF172f55),
                    offset: Offset(2, 4),
                    blurRadius: 5,
                    spreadRadius: 2
                )
              ],
            ),
            child: IconButton(icon: SvgPicture.asset(Assets.svg_facebook,color: Colors.indigo,), onPressed: null)
        ),
      ],
    ) ,
    ],

  );
}