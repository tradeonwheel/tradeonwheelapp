import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => new _SearchPageState();
}
class _SearchPageState extends State<SearchPage>
{
  final key = new GlobalKey<ScaffoldState>();
  final TextEditingController _searchQuery = new TextEditingController();
  List<String> _list;
  bool _IsSearching = false;
  String _searchText = "";

  _SearchPageState() {
    _searchQuery.addListener(() {
      if (_searchQuery.text.isEmpty) {
        setState(() {
          _IsSearching = false;
          _searchText = "";
        });
      }
      else {
        setState(() {
          _IsSearching = true;
          _searchText = _searchQuery.text;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _IsSearching = false;
    init();

  }

  void init() {
    _list = List();
    _list.add("Swift");
    _list.add("Nexon");
    _list.add("Tiago");
    _list.add("Alto");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: key,
      appBar: buildBar(context),
      body: _IsSearching ? new ListView(
        padding: new EdgeInsets.symmetric(vertical: 8.0),
        children:  _buildSearchList() ,
      ): Text('No results found!'),
    );
  }

  List<ChildItem> _buildSearchList() {
    if (_searchText.isEmpty) {
      return _list.map((contact) => new ChildItem(contact))
          .toList();
    }
    else {
      List<String> _searchList = List();
      for (int i = 0; i < _list.length; i++) {
        String  name = _list.elementAt(i);
        if (name.toLowerCase().contains(_searchText.toLowerCase())) {
          _searchList.add(name);
        }
      }
      return _searchList.map((contact) => new ChildItem(contact))
          .toList();
    }
  }

  Widget buildBar(BuildContext context) {
    return new AppBar(
        // centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        toolbarHeight: 44,
        leadingWidth: 20,
        leading:
            IconButton(
            icon:Icon(Icons.arrow_back_ios_sharp,color: Colors.indigo,),
            onPressed: () => Navigator.of(context).pop(),
            ),
        title: SizedBox(
          height: 35,
          child: TextField(
            controller: _searchQuery,
            maxLines: 1,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(1)),
                borderSide: BorderSide(width: 0.4,color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(1)),
                  borderSide: BorderSide(width: 0.4,color: Colors.white)
              ),
              hintText: 'Search',hintStyle:TextStyle(color:Colors.black87),
              suffixIcon: Icon(Icons.search,color: Colors.black87,),
              contentPadding: EdgeInsets.only(left: 8.0),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
    );
  }

}

class ChildItem extends StatelessWidget {
  final String name;
  ChildItem(this.name);
  @override
  Widget build(BuildContext context) {
    return new ListTile(title: new Text(this.name));
  }

}