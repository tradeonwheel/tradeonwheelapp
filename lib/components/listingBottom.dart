import 'dart:math';

import 'package:flutter/material.dart';
import 'package:trade_on_wheel/screens/listing.dart';
class BottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 6.0,
      elevation: 0.0,
      color: Color(0xFF172f55),
      child: Container(
        height: 40.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Color(0xFF172f55),
              height: 40.0,
              // width: MediaQuery.of(context).size.width/2 - 16.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget>[
                  FlatButton(
                    color: Color(0xFF172f55),
                    minWidth: MediaQuery.of(context).size.width * 0.4,
                    onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Listing()),
                    );},
                    child: Row(
                      children: <Widget>[
                        Transform.rotate(
                          angle: 270 * pi / 180,
                          child: Icon(Icons.sync_alt, color: Colors.white,),
                        ),
                        Text('Filter', style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                  Container(height: 80, child: VerticalDivider(color: Colors.white)),
                  FlatButton(
                    color: Color(0xFF172f55),
                    minWidth: MediaQuery.of(context).size.width * 0.4,
                    onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Listing()),
                    );},
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.filter_alt_outlined, color: Colors.white,),
                        Text('Filter', style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
