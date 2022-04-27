import 'package:flutter/material.dart';
import '../MyDrawer.dart';

var title ='맵임';

class MapPage extends StatelessWidget {

  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: MyDrawer(),
      body: Text('맵임'),
    );
  }
}

