import 'package:flutter/material.dart';
import 'package:trade_on_wheel/assets.dart';
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.3,
      child: Drawer(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: <Widget>[
              Expanded(
                child:ListView(
                  padding: EdgeInsets.only(top:50),
                  children: <Widget>[
                    ListTile(leading: Image(image:AssetImage(Assets.logo)),title: Text('Home',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),), onTap: () {},tileColor: Colors.grey,),
                    ListTile(leading: Icon(Icons.directions_car),title: Text('New Cars'),onTap: () {},),
                    ListTile(leading: Icon(Icons.vpn_key),title: Text('Used Cars'),onTap: () {},),
                    ListTile(leading: Icon(Icons.camera_alt),title: Text('Sell Car'),onTap: () {},),
                    Divider(),
                    ListTile(leading: Icon(Icons.sticky_note_2_sharp),title: Text('News'),onTap: () {},),
                    ListTile(leading: Icon(Icons.settings),title: Text('About'),onTap: () {},),
                  ],
                ),
              ),
              Container(
                  child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Column(
                        children: <Widget>[
                          Divider(height: 1.0,),
                          Padding(padding: EdgeInsets.all(15.0),child: Text('Version 1.0.0'),)
                        ],
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
