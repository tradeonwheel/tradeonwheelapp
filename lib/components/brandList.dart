import 'package:flutter/material.dart';
import 'package:trade_on_wheel/data/data.dart';
import 'package:trade_on_wheel/screens/listing.dart';

class BrandList extends StatefulWidget {
  final BrandName brandName;
  final Categorys catTitle;
  const BrandList({
    Key key,
    this.brandName,
    this.catTitle,
  }) : super(key: key);
  @override
  _BrandListState createState() => _BrandListState(catTitle);
}

class _BrandListState extends State<BrandList> {
  Categorys catTitle;
  _BrandListState(this.catTitle);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight:35,
        actions: [
          IconButton(
            icon:Icon(Icons.close,color: Color(0xFF172f55),),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        color: Colors.white,
        child: GridView.builder(
          itemCount: brandlist.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3),
          itemBuilder: (BuildContext context,index) {
            if (brandlist[index].vehicleType==catTitle.title){
              final BrandName brandName = brandlist[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Listing(brandname: brandlist[index],)),
                  );
                },
                child: new Card(
                  color: Colors.white,
                  shadowColor: Colors.white54,
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: new GridTile(
                    child: new Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image(image: AssetImage(brandName.image),fit: BoxFit.contain),
                      ),
                    ),
                    footer: Container(color: Colors.white,
                      margin:EdgeInsets.only(top: 18.0,bottom: 10.0),
                      child: Align(alignment: Alignment.center,child: new Text(brandName.name,style: TextStyle(fontSize: 14.0,color: Colors.black,letterSpacing: 2.0,fontWeight: FontWeight.bold),),),
                    ),
                  ),
                ),
              );}else return Text('');
          },
        ),
      ),
    );
  }
}



