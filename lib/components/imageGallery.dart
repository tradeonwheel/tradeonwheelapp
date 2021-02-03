import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';


class ImageGallery extends StatefulWidget{
  @override
  _ImageGalleryState createState() =>_ImageGalleryState();

}

class _ImageGalleryState extends State<ImageGallery>{
  bool loading;
  List<String>ids;
  @override
  void initState(){
    loading = true;
    ids = [];
    _loadImageIds();
    super.initState();
  }
  void _loadImageIds() async{
    final response = await http.get('https://picsum.photos/v2/list');
    final json = jsonDecode(response.body);
    List<String> _ids =[];
    for (var image in json) {
      _ids.add(image['id']);
    }
    setState(() {
      loading = false;
      ids = _ids;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (loading){
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return GridView.builder(
      shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context,index) => GestureDetector(
          onTap:(){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ImagePage(ids[index]),),
            );
          },
          child:Image.network('https://picsum.photos/id/${ids[index]}/300/300',),
        ),
      itemCount: ids.length,
    );

  }
}

class ImagePage extends StatelessWidget{
  final String id;
  ImagePage (this.id);

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: PhotoView(
        imageProvider: NetworkImage('https://picsum.photos/id/$id/600/600'),
        enableRotation: true,
      ),
    );
  }
}