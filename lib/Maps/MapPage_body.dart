import 'package:flutter/material.dart';
import '../MyDrawer.dart';

var title ='맵임';

class MapPage_body extends StatelessWidget {

  const MapPage_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: MyDrawer(),
      body: const Image(image: AssetImage('assets/map/map2.jpg')),
    );
  }
}

