import 'package:flutter/material.dart';
import '../MyDrawer.dart';

var title ='맵임';

class MapPage_mind extends StatelessWidget {

  const MapPage_mind({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: MyDrawer(),
      body: const Image(image: AssetImage('assets/map/map1.jpg')),
    );
  }
}

