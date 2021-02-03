import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trade_on_wheel/components/listingBottom.dart';
import 'package:trade_on_wheel/data/data.dart';
import 'package:trade_on_wheel/screens/vehicleDetails.dart';
class UsedVehicleListing extends StatefulWidget {
  final Vehicle vehicle;
  final Function press;
  const UsedVehicleListing({
    Key key,
    this.vehicle,
    this.press,
  }) : super(key: key);
  @override
  _UsedVehicleListingState createState() => _UsedVehicleListingState();
}

class _UsedVehicleListingState extends State<UsedVehicleListing> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xFF172f55),
        elevation: 0,
        toolbarHeight:35,
        leading: IconButton(
          icon:Icon(Icons.arrow_back_ios,color: Colors.white,),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          FlatButton(
            onPressed: null,
            child: null,
          ),
          FlatButton(
            onPressed: (){},
            child: Row(
              children: <Widget>[
                // Text('Favorite ', style: TextStyle(color: Colors.indigoAccent),),
                Icon(Icons.favorite, color: Colors.white,),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: vehicles.length,
            itemBuilder: (context, index){
              final Vehicle vehicle= vehicles[index];
              return  Container(
                child:  GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => VehicleDetails(vehicle:vehicles[index])),
                    );
                  },
                  child:Stack(
                    children:<Widget> [
                      _buildCard(vehicle.name,"\u20B9 ${vehicle.price}",vehicle.image, "\ ${vehicle.year}","\ ${vehicle.totalDrived}", context),
                    ],
                  ),
                ),
              );

            }
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }

  Widget _buildCard(String name, String price, String imgPath,String year,String ttKm,context){
    return Padding(padding: EdgeInsets.only(top:15.0,bottom:5.0,left:5.0,right: 5.0),
      // child: InkWell(onTap: (){
      //   Navigator.push(context,
      //     MaterialPageRoute(builder: (context) => VehicleDetails(vehiclename:name)),
      //   );
      // },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              )
            ],
            color: Colors.white
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(tag: imgPath,
                child: Container(
                  height: 150.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgPath),fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0,right: 5.0),
                        child: Icon(Icons.favorite_border_outlined, color: Color(0xFFEF7532)),
                      ),
                    ],
                  ) ,
                )
            ),
            SizedBox(height: 7.0,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    name,style: TextStyle(color: Colors.black87,fontSize: 18.0,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5.0,),
                  Text(
                    price,style: TextStyle(color: Colors.indigo,fontSize: 16.0,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4.0,),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Icon(Icons.circle, color: Color(0xFFEF7532)),
                      Text('\u{2022}'+year),
                      Text('\u{2022}'+ttKm),
                      Text('\u{2022} manual'),
                      Text('\u{2022} Diesel')
                    ]
                )
            ),
            SizedBox(height: 10.0,),
          ],
        ),
      ),
      // ),
    );
  }
}

