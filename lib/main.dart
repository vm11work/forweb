import 'dart:ui';

import 'package:flutter/material.dart';

import 'dart:io' as io;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:forweb/notificationservice.dart';
import "formobile.dart" if (dart.library.html) "forweb.dart";



import 'mainscreen.dart';
import 'MyDrawer.dart';
import 'icomoon_icons.dart';
import 'package:forweb/GradientIcon.dart';


// import 'package:reflectable/reflectable.dart';


//
// class Reflector extends Reflectable {
//   const Reflector()
//       : super(invokingCapability); // Request the capability to invoke methods.
// }
// const r = const Reflector();



void main() {

  // initializeReflectable();
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '정신과 시간의 방',

      theme: ThemeData(
        // primarySwatch: Colors.black12,
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: '표지, 지침.'),
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  var codePoint=0xe146;
  final myController = TextEditingController();
  var myIcon = Icon(Icons.padding_outlined).icon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                // hintText: '0xe146',
                labelText: '0xe146',
              ),

              controller: myController,
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                myIcon = IconData(int.parse(myController.text), fontFamily: 'MaterialIcons');
              });}, child: Text('버튼임')
            ),

            ElevatedButton(onPressed: (){
              setState(() {


                // InstanceMirror im =  r.reflect(Icomoon);
                // print(im);
                myIcon = Icon(Icons.remove).icon;
              });}, child: Text('버튼임2')
            )
            ,
            // Icon('Icons.add'),
            // Icon(IconData(int.parse(myController.text), fontFamily: 'MaterialIcons')),
            Icon(myIcon),
            Icon(Icomoon.gd_andong),
            GradientIcon(Icomoon.unbong, 50, LinearGradient(
              colors: <Color>[
                Colors.red,
                Colors.yellow,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            ),
            Icon(Icomoon.gyodang_jongro),
          MainScreen(),
          Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
      ],
        ),
      ),
        floatingActionButton:(kIsWeb)? WebMaximum(): SizedBox.shrink()
    );
  }
}
