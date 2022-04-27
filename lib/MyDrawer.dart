import 'dart:ui';
import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:forweb/Maps/MapPage_mind.dart';
import 'package:forweb/Maps/MapPage_body.dart';
import 'package:forweb/Maps/MapPage_work.dart';
import 'package:forweb/Maps/MapPage_line.dart';


class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.blueGrey,
        child: ListView(
          children: <Widget>[
            const SizedBox(height:16),
            buildMyItem(
              text: 'mind',
              icon: Icons.favorite_border,
              onClicked : ()=> selectedItem(context,0),),
            buildMyItem(
              text: 'body',
              icon: Icons.accessibility,
              onClicked : ()=> selectedItem(context,1),),
            buildMyItem(
              text: 'work',
              icon: Icons.laptop_windows,
              onClicked : ()=> selectedItem(context,2),),
            buildMyItem(
              text: 'line',
              icon: Icons.people,
              onClicked : ()=> selectedItem(context,3),),

            Divider(color:Colors.white),
          ],
        ),
      ),
    );
  }
}
void selectedItem(BuildContext context, int index)
{
  // Navigator.pop(context);
   Navigator.of(context).pop();
  switch(index)
  {
    case 0:
      Navigator.of(context).push
      (MaterialPageRoute(builder:
      (context)=>MapPage_mind()));
      break;
    case 1:
      Navigator.of(context).push
        (MaterialPageRoute(builder:
          (context)=>MapPage_body()));
      break;
    case 2:
      Navigator.of(context).push
        (MaterialPageRoute(builder:
          (context)=>MapPage_work()));
      break;
    case 3:
      Navigator.of(context).push
        (MaterialPageRoute(builder:
          (context)=>MapPage_line()));
      break;
  }

}

Widget buildMyItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  final color = Colors.white;
  final hoverColor = Colors.yellow;
  return ListTile(
    leading: Icon(icon,color:color),
    title: Text(text,style: TextStyle(color:color)),
    hoverColor: hoverColor,
    // hoverColor: hoverColor,
    onTap: onClicked,
  );
}
