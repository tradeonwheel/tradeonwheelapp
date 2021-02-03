import 'package:flutter/material.dart';
import 'package:trade_on_wheel/assets.dart';
import 'package:trade_on_wheel/components/sellerRegistration.dart';
import 'package:trade_on_wheel/screens/blogView.dart';
import 'package:trade_on_wheel/screens/loginScreen.dart';
import 'package:trade_on_wheel/screens/userProfile.dart';

class UserDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(data:Theme.of(context).copyWith(
      // canvasColor: Color(0xFF262AAA),
      canvasColor: Color(0xFF172f55),
      //other styles
    ),
        child: Container(
          // color: Color(0xFF262AAA),
          width: MediaQuery.of(context).size.width/1.3,
          child: Drawer(
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:8.0,top: 32.0),
                        child: Row(
                        children: [
                          Container(
                              height:70,width:70,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(Assets.bike),radius:100,
                              )
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text('Abhishek',
                                    style: TextStyle(
                                      fontSize: 16.0,color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.9,
                                    ),),
                                  Text('abhishek@gmail.com',
                                    style: TextStyle(
                                      fontSize: 14.0,color: Color(0xFF1A73E8),
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.8,
                                    ),),
                                ],
                              ),
                            ),
                          )
                        ],
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Divider(color: Colors.grey,thickness: 0.30,height:1,),
                      ),
                      ListTile(
                        leading: Icon(Icons.person_outline,color: Color(0xFF1A73E8),),title: Text('Profile',style:TextStyle(color:Colors.white70),),
                        onTap: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => UserProfile()),
                          );
                        },
                      ),
                      Divider(color: Colors.grey,thickness: 0.30,height: 1,),
                      ListTile(
                        leading: Icon(Icons.vpn_key_outlined,color: Color(0xFF1A73E8),),title: Text('Login',style:TextStyle(color:Colors.white70),),
                        onTap: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => UserLoginScreen()),
                          );
                        },
                      ),
                      Divider(color: Colors.grey,thickness: 0.30,height: 1,),
                      ListTile(
                        leading: Icon(Icons.favorite_border_outlined,color: Color(0xFF1A73E8),),title: Text('Favorite',style:TextStyle(color:Colors.white70),),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      Divider(color: Colors.grey,thickness: 0.30,height: 1,),
                      ListTile(
                        leading: Icon(Icons.email_outlined,color: Color(0xFF1A73E8),),title: Text('Inbox',style:TextStyle(color:Colors.white70),),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      Divider(color: Colors.grey,thickness: 0.30,height: 1,),
                      ListTile(
                        leading: Icon(Icons.money,color: Color(0xFF1A73E8),),title: Text('My Sell',style:TextStyle(color:Colors.white70),),
                        onTap: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SellerRegistration()),
                          );
                        },
                      ),
                      Divider(color: Colors.grey,thickness: 0.30,height: 1,),
                      ListTile(
                        leading: Icon(Icons.sticky_note_2_sharp,color: Color(0xFF1A73E8),),title: Text('News',style:TextStyle(color:Colors.white70),),
                        onTap: () {Navigator.push(context,
                          MaterialPageRoute(builder: (context) => WebViewExample()),
                        );},
                      ),
                      Divider(color: Colors.grey,thickness: 0.30,height: 1,),
                      ListTile(
                        leading: Icon(Icons.settings,color: Color(0xFF1A73E8),),title: Text('About',style:TextStyle(color:Colors.white70),),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      Divider(color: Colors.grey,thickness: 0.30,height: 1,),
                    ],
                  ),
                ),
                Container(
                    child: Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: Column(
                          children: <Widget>[
                            Divider(height: 1.0,),
                            Padding(padding: EdgeInsets.all(15.0),child: Text('Version 1.0.0',style: TextStyle(color: Colors.white70),),)
                          ],
                        ))),
              ],
            ),
          ),
        ),);

  }
}
