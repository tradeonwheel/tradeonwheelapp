import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trade_on_wheel/components/brandList.dart';
import 'package:trade_on_wheel/data/data.dart';
import 'package:trade_on_wheel/screens/listing.dart';

class CategoryListing extends StatefulWidget {
  @override
  _CategoryListingState createState() => _CategoryListingState();
}
class _CategoryListingState extends State<CategoryListing>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20.0,),
        Container(
          height: 40,
          decoration: BoxDecoration(color: Color(0xFF172f55),
            borderRadius: BorderRadius.all(
              Radius.circular(50),),),
          child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black87,
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 20.0,left: 20.0),
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3.0,
              indicatorPadding: EdgeInsets.all(10.0),
              indicator: BoxDecoration(
                border: Border.all(color: Color(0xFF172f55), width: 2),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              tabs: [
                Tab(
                  child: Text('New',
                      style: TextStyle(
                        fontSize: 16.0,
                      )),
                ),
                Tab(
                  child: Text('Used',
                      style: TextStyle(
                        fontSize: 16.0,
                      )),
                ),
              ]),
        ),
        Container(
            height: 180,
            width: double.infinity,
            child: TabBarView(
                controller: _tabController,
                children: [
                  NewVehicleCategoryListing(),
                  UsedVehicleCategoryListing(),
                ]
            )
        ),
      ],
    );
  }
}
//Tab overview
class UsedVehicleCategoryListing extends StatefulWidget {
  final Categorys categorys;
  final Function press;
  const UsedVehicleCategoryListing({
    Key key,
    this.categorys,
    this.press,
  }) : super(key: key);

  @override
  _UsedVehicleCategoryListingState createState() => _UsedVehicleCategoryListingState();
}

class _UsedVehicleCategoryListingState extends State<UsedVehicleCategoryListing> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 140.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: categories.length,
                  itemBuilder: (context, index)
                  {
                    final Categorys categorys = categories[index];
                    if(categorys.vehicleType=='used') {
                      return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Listing()),
                              );
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 6.0),
                                  height:60.0,
                                  width: MediaQuery.of(context).size.width * 0.20,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(categorys.image),
                                      fit: BoxFit.cover,
                                    ),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(color:Color(0xFF262AAA), width: 2.0),
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  // child: Image(image:AssetImage(categorys.image)),
                                ),
                                Padding(
                                  padding:const EdgeInsets.fromLTRB(0, 100, 0, 0),
                                  child: Text(categorys.title,style: TextStyle(color: Colors.black87,fontSize:16,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                    // ignore: missing_return
                    } else return Container();
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//car variants
class NewVehicleCategoryListing extends StatelessWidget {
  final Categorys categorys;
  final Function press;
  const NewVehicleCategoryListing(  {
    Key key,
    this.categorys,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 140.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: categories.length,
                  itemBuilder: (context, index)
                  {
                    final Categorys categorys= categories[index];
                    if(categorys.vehicleType=='new') {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => BrandList(catTitle: categories[index],)),
                                );
                              },
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 6.0),
                                    height:60.0,
                                    width: MediaQuery.of(context).size.width * 0.20,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(categorys.image),
                                        fit: BoxFit.cover,
                                      ),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(color:Color(0xFF262AAA), width: 2.0),
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                    // child: Image(image:AssetImage(categorys.image)),
                                  ),
                                  Padding(
                                    padding:const EdgeInsets.fromLTRB(0, 100, 0, 0),
                                    child: Text(categorys.title,style: TextStyle(color: Colors.black87,fontSize:16,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                      // ignore: missing_return
                    } else return Container();
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}