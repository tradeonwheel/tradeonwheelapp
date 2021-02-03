import 'package:flutter/material.dart';
import 'package:trade_on_wheel/components/sellerRegistration.dart';
import 'package:trade_on_wheel/screens/blogView.dart';
import 'package:trade_on_wheel/screens/listing.dart';
import 'package:trade_on_wheel/screens/userProfile.dart';
class BottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6.0,
      color:Colors.transparent,
      elevation: 9.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          color: Color(0xFF172f55),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget>[
                  IconButton(
                    icon: Icon(Icons.campaign),
                    color: Colors.white,
                    onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WebViewExample()),
                    );},),
                  Icon(Icons.local_post_office,color: Colors.white,),
                ],
              ),
            ),
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget>[
                  IconButton(
                    icon: Icon(Icons.monetization_on_outlined),
                    color: Colors.white,
                    onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SellerRegistration()),
                    );},),
                  IconButton(
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                    onPressed: () {Scaffold.of(context).openEndDrawer();},),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}