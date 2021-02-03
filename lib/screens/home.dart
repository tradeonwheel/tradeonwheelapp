import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:trade_on_wheel/assets.dart';
import 'package:trade_on_wheel/components/bottomBar.dart';
import 'package:trade_on_wheel/components/categories.dart';
import 'package:trade_on_wheel/components/mainDrawer.dart';
import 'package:trade_on_wheel/components/userDrawer.dart';
import 'package:trade_on_wheel/components/vehicleListing.dart';
import 'package:trade_on_wheel/screens/listing.dart';
import 'package:trade_on_wheel/screens/newVehicleListing.dart';
import 'package:trade_on_wheel/screens/search.dart';
import 'package:trade_on_wheel/screens/testp.dart';
class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.teal,
      extendBodyBehindAppBar: true,
      // drawer: MainDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.4),
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                  icon:Image(image:AssetImage(Assets.logo)),
                  onPressed:(){}
                );
          },
        ),
        actions: <Widget>[
          FlatButton(
              onPressed:(){},
              child: Text(
                'Noida',
                style: TextStyle(
                    color:Colors.white,
                    fontSize: 18),
                ),
              ),
          IconButton(
            icon:Icon(Icons.location_on_outlined,color:Colors.white,size:20),
            onPressed: (){},
            // icon:Image(image:AssetImage('images/search.png'),width: 18,),
          ),
        ],
        // flexibleSpace: Image(image: AssetImage('images/bugati.jpg'),fit:BoxFit.fitWidth,),
      ),
      body: Center(
        child: SingleChildScrollView(
          child:Column(
            children: <Widget>[

              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    margin:EdgeInsets.only(bottom: 30),
                    height: 200.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Assets.main_banner),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 8,
                    right: 8,
                    bottom:0,
                    child: SizedBox(
                      height: 48.0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(color: Colors.black, blurRadius: 3.0, spreadRadius: 0.4)
                            ]),
                        child: TextField(
                          onTap: (){Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SearchPage()),
                          );},
                          readOnly: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width: 1.4,color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(width: 1.4,color: Colors.black87)
                            ),
                            hintText: 'Search',hintStyle:TextStyle(color:Colors.black87),
                            suffixIcon: Icon(Icons.search,color: Colors.black87,),
                            contentPadding: EdgeInsets.all(8),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      )
                    ),
                  ),
                ],
              ),
              // HomeSearch(),
              // TestV(),
              CategoryListing(),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Recently added vehicles',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        FlatButton(onPressed: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => NewVehicleListing()),
                          );
                        }, child: Text('view all'),)
                      ],
                    )
                  ],
                ),
              ),
              VehicleListing(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Luxury Vehicles',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          )
        ),
      ),
      endDrawer: UserDrawer(),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      } ,
      backgroundColor: Color(0xFF172f55),
      child: Icon(Icons.home),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}