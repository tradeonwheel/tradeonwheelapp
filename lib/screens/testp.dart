import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trade_on_wheel/components/brandList.dart';
import 'package:trade_on_wheel/data/data.dart';
import 'package:trade_on_wheel/screens/listing.dart';

class TestV extends StatefulWidget {
  @override
  _TestVState createState() => _TestVState();
}
class _TestVState extends State<TestV>
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
        Container(
          child: Text('hi'),
        )
      ],
    );
  }
}
//Tab overview
class NewVehicleCategoryListing extends StatelessWidget {
  final Categorys categorys;
  final Function press;
  const NewVehicleCategoryListing({
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
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
                    final Categorys categorys= categories[index];
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
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}

