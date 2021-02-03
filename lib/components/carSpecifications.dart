import 'package:flutter/material.dart';
import 'package:trade_on_wheel/components/imageGallery.dart';
//
class CarSpecifications extends StatefulWidget {
  @override
  _CarSpecificationsState createState() => _CarSpecificationsState();
}

class _CarSpecificationsState extends State<CarSpecifications>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50,
          child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black87,
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3.0,
              indicatorPadding: EdgeInsets.all(10),
              tabs: [
                Tab(
                  child: Text('Overview',
                      style: TextStyle(
                        fontSize: 16.0,
                      )),
                ),
                Tab(
                  child: Text('Variants',
                      style: TextStyle(
                        fontSize: 16.0,
                      )),
                ),
                Tab(
                  child: Text('Specs',
                      style: TextStyle(
                        fontSize: 16.0,
                      )),
                ),
                Tab(
                  child: Text('Images',
                      style: TextStyle(
                        fontSize: 16.0,
                      )),
                ),
                Tab(
                  child: Text('News',
                      style: TextStyle(
                        fontSize: 16.0,
                      )),
                )
              ]),
        ),
        Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: TabBarView(
                controller: _tabController,
                children: [
                  CarOverview(),
                  CarVersions(),
                  CarColors(),
                  ImageGallery(),
                  CarNews(),
                ]
            )
        ),
      ],
    );
  }
}
//Tab overview
class CarOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tblText=TextStyle(fontWeight: FontWeight.bold,height: 2);
    return Container(
      margin: EdgeInsets.only(bottom: 1.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: new  EdgeInsets.all(10.0),
            child: Text('Key Specs of Swift Desire',style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
          ),
          Container(
            margin: new EdgeInsets.all(4.0),
            padding: new  EdgeInsets.all(10.0),
            decoration: new BoxDecoration(
                color:Colors.white,
                boxShadow: [new BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4.0,
                ),]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    children: [
                      Icon(Icons.speed_outlined,size: 30,color: Colors.black54,),
                      SizedBox(height: 3.0,),
                      Text('Mileage (upto)',style: TextStyle(fontSize: 12.0,color: Colors.black54,fontWeight: FontWeight.bold),),
                      SizedBox(height: 4.0,),
                      Text('20.0 kmpl', style:TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Icon(Icons.time_to_leave_rounded,size: 30,color: Colors.black54,),
                      SizedBox(height: 3.0,),
                      Text('Engine (upto)',style: TextStyle(fontSize: 12.0,color: Colors.black54,fontWeight: FontWeight.bold),),
                      SizedBox(height: 4.0,),
                      Text('999 cc', style:TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Icon(Icons.flash_on_outlined,size: 30,color: Colors.black54,),
                      SizedBox(height: 3.0,),
                      Text('BHP',style: TextStyle(fontSize: 12.0,color: Colors.black54,fontWeight: FontWeight.bold),),
                      SizedBox(height: 4.0,),
                      Text('98.63', style:TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: new EdgeInsets.all(4.0),
            padding: new  EdgeInsets.all(10.0),
            decoration: new BoxDecoration(
                color:Colors.white,
                boxShadow: [new BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4.0,
                ),]
            ),
            child: Table(
              border: TableBorder(horizontalInside: BorderSide(width: 1, color: Color(0xF5F5F5F5), style: BorderStyle.solid)),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                    children: [
                      TableCell(child:Text('Length',style:tblText),),
                      TableCell(child:Text('4549 mm'))
                    ]
                ),
                TableRow(
                    children: [
                      TableCell(child:Text('Width',style:tblText)),
                      TableCell(child:Text('4549 mm'))
                    ]
                ),
                TableRow(
                    children: [
                      TableCell(child:Text('Height',style:tblText)),
                      TableCell(child:Text('4549 mm'))
                    ]
                ),
                TableRow(
                    children: [
                      TableCell(child:Text('Seating Capacity',style:tblText)),
                      TableCell(child:Text('5 Person'))
                    ]
                ),
                TableRow(
                    children: [
                      TableCell(child:Text('Fuel Type',style:tblText)),
                      TableCell(child:Text('Petrol'))
                    ]
                ),
                TableRow(
                    children: [
                      TableCell(child:Text('Max Power (bhp@rpm)',style:tblText)),
                      TableCell(child:Text('119 bhp @6600 rpm'))
                    ]
                ),
                TableRow(
                    children: [
                      TableCell(child:Text('Max Torque (Nm@rpm)',style:tblText)),
                      TableCell(child:Text('145 Nm @ 4300 rpm'))
                    ]
                ),
                TableRow(
                    children: [
                      TableCell(child:Text('Mileage (ARAI)',style:tblText)),
                      TableCell(child:Text('17.8 kmpl'))
                    ]
                ),
                TableRow(
                    children: [
                      TableCell(child:Text('Drivetrain',style:tblText)),
                      TableCell(child:Text('FWD'))
                    ]
                ),
                TableRow(
                    children: [
                      TableCell(child:Text('Air Conditioner',style:tblText)),
                      TableCell(child:Text('Yes (Automatic Climate Control)'))
                    ]
                ),
                TableRow(
                    children: [
                      TableCell(child:Text('Power Windows',style:tblText)),
                      TableCell(child:Text('Front & Rear'))
                    ]
                ),
                TableRow(
                    children: [
                      TableCell(child:Text('Central Locking',style:tblText)),
                      TableCell(child:Text('Keyless'))
                    ]
                ),
                TableRow(
                    children: [
                      TableCell(child:Text('Anti-Lock Breaking System (ABS)',style:tblText)),
                      TableCell(child:Text('Yes'))
                    ]
                ),
                TableRow(
                    children: [
                      TableCell(child:Text('Front Tyres',style:tblText)),
                      TableCell(child:Text('185/60 R15'))
                    ]
                ),
                TableRow(
                    children: [
                      TableCell(child:Text('Rear Tyres',style:tblText)),
                      TableCell(child:Text('185/60 R15'))
                    ]
                ),
              ],
            ),
          ),
          Container(
            padding: new  EdgeInsets.all(10.0),
            child: Text('User Reviews',style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
          ),
          Container(
            margin: new EdgeInsets.all(4.0),
            padding: new  EdgeInsets.all(10.0),
            decoration: new BoxDecoration(
                color:Colors.white,
                boxShadow: [new BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4.0,
                ),]
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star,size: 30,color: Colors.green,),
                        Padding(padding: EdgeInsets.only(right: 8.0),),
                        Text('4.3',style: TextStyle(fontSize: 28,color: Colors.black87,fontWeight: FontWeight.w900),),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Based on', style: TextStyle(fontSize: 12,color:Colors.black54),),
                        Text('116 User Reviews', style: TextStyle(fontSize: 14,color:Colors.black87),)
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0,bottom:4.0),
                  child: Container(height: 1.0,color: Colors.black12,),
                ),
                FlatButton(onPressed:(){},
                    child: Text('Write a review',style: TextStyle(color:Colors.white),),
                  color: Colors.indigoAccent,
                  minWidth: double.infinity,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
//car variants
class CarVersions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.all(4.0),
      padding: new  EdgeInsets.all(5.0),
      decoration: new BoxDecoration(
          color:Colors.white,
          boxShadow: [new BoxShadow(
            color: Colors.black12,
            blurRadius: 4.0,
          ),]
      ),
      child: Column(
        children: [
          Container(
            height: 110,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4.0,),
                Text('LXi',style: TextStyle(color:Colors.black87,fontWeight: FontWeight.bold,fontSize:18),),
                SizedBox(height: 4.0,),
                Text('1197 cc, Petrol, Manual, 21.01 kmpl',style: TextStyle(color:Colors.black54,fontWeight:FontWeight.bold,fontSize:12),),
                SizedBox(height: 4.0,),
                Row(
                  children: [
                    Text('\$ 7.94L ',style: TextStyle(color:Colors.black87,fontWeight:FontWeight.bold,fontSize:12),),
                    Text('On Road Price(GST)',style: TextStyle(color:Colors.black54,fontWeight:FontWeight.bold,fontSize:12),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton(
                        onPressed:(){},
                        child: Text('Show Price in my city',style: TextStyle(color:Colors.indigoAccent),),
                    ),
                    FlatButton(
                      onPressed:(){},
                      child: Text('Get Offer',style: TextStyle(color:Colors.indigoAccent),),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(height: 1,color: Colors.black12,),
          Container(
            height: 110,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4.0,),
                Text('LXi',style: TextStyle(color:Colors.black87,fontWeight: FontWeight.bold,fontSize:18),),
                SizedBox(height: 4.0,),
                Text('1197 cc, Petrol, Manual, 21.01 kmpl',style: TextStyle(color:Colors.black54,fontWeight:FontWeight.bold,fontSize:12),),
                SizedBox(height: 4.0,),
                Row(
                  children: [
                    Text('\$ 7.94L ',style: TextStyle(color:Colors.black87,fontWeight:FontWeight.bold,fontSize:12),),
                    Text('On Road Price(GST)',style: TextStyle(color:Colors.black54,fontWeight:FontWeight.bold,fontSize:12),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton(
                      onPressed:(){},
                      child: Text('Show Price in my city',style: TextStyle(color:Colors.indigoAccent),),
                    ),
                    FlatButton(
                      onPressed:(){},
                      child: Text('Get Offer',style: TextStyle(color:Colors.indigoAccent),),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(height: 1,color: Colors.black12,),
          Container(
            height: 110,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4.0,),
                Text('LXi',style: TextStyle(color:Colors.black87,fontWeight: FontWeight.bold,fontSize:18),),
                SizedBox(height: 4.0,),
                Text('1197 cc, Petrol, Manual, 21.01 kmpl',style: TextStyle(color:Colors.black54,fontWeight:FontWeight.bold,fontSize:12),),
                SizedBox(height: 4.0,),
                Row(
                  children: [
                    Text('\$ 7.94L ',style: TextStyle(color:Colors.black87,fontWeight:FontWeight.bold,fontSize:12),),
                    Text('On Road Price(GST)',style: TextStyle(color:Colors.black54,fontWeight:FontWeight.bold,fontSize:12),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton(
                      onPressed:(){},
                      child: Text('Show Price in my city',style: TextStyle(color:Colors.indigoAccent),),
                    ),
                    FlatButton(
                      onPressed:(){},
                      child: Text('Get Offer',style: TextStyle(color:Colors.indigoAccent),),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(height: 1,color: Colors.black12,),
          Container(
            height: 110,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4.0,),
                Text('LXi',style: TextStyle(color:Colors.black87,fontWeight: FontWeight.bold,fontSize:18),),
                SizedBox(height: 4.0,),
                Text('1197 cc, Petrol, Manual, 21.01 kmpl',style: TextStyle(color:Colors.black54,fontWeight:FontWeight.bold,fontSize:12),),
                SizedBox(height: 4.0,),
                Row(
                  children: [
                    Text('\$ 7.94L ',style: TextStyle(color:Colors.black87,fontWeight:FontWeight.bold,fontSize:12),),
                    Text('On Road Price(GST)',style: TextStyle(color:Colors.black54,fontWeight:FontWeight.bold,fontSize:12),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton(
                      onPressed:(){},
                      child: Text('Show Price in my city',style: TextStyle(color:Colors.indigoAccent),),
                    ),
                    FlatButton(
                      onPressed:(){},
                      child: Text('Get Offer',style: TextStyle(color:Colors.indigoAccent),),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(height: 1,color: Colors.black12,),
        ],
      ),
    );
  }
}

//Tab Colors
class CarColors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
                Container(
                  padding: new  EdgeInsets.all(10.0),
                  child: Text('Key Specs of Swift Desire',style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
                ),
              ]
    );
  }
}
//Tab News
class CarNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('this is profile page',style: TextStyle(color:Colors.black54),),
      ],
    );
  }
}