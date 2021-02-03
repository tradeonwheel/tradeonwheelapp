import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trade_on_wheel/data/data.dart';
import 'package:trade_on_wheel/screens/listing.dart';
import 'package:trade_on_wheel/screens/vehicleDetails.dart';
class VehicleListing extends StatelessWidget {
  final Vehicle vehicle;
  final Function press;
  const VehicleListing({
    Key key,
    this.vehicle,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: vehicles.length,
              itemBuilder: (context, index){
                final Vehicle vehicle= vehicles[index];
                return Container(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Listing()),
                      );
                    },
                    child: Stack(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top:15.0,bottom:5.0,left:5.0,right: 5.0),
                          child: InkWell(onTap: (){
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => VehicleDetails(vehicle:vehicles[index])),
                            );
                          },
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
                                  Hero(tag: vehicle.image,
                                      child: Container(
                                        height: 92.0,
                                        width: 240,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(vehicle.image),fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
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
                                          vehicle.name,style: TextStyle(color: Colors.black87,fontSize: 16.0,fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 2.0,),
                                        Text(
                                          '${vehicle.price}',style: TextStyle(color: Color(0xFF172f55),fontSize: 16.0),
                                        ),
                                        SizedBox(height: 2.0,),
                                        Text(
                                          'Year ${vehicle.year} +${vehicle.totalDrived} km',style: TextStyle(color: Colors.blueGrey,fontSize: 14.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }
          ),
        )
      ],
    );
  }

}