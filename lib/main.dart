import 'package:flutter/material.dart';

import 'dart:io' as io;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:forweb/notificationservice.dart';
import "formobile.dart" if (dart.library.html) "forweb.dart";



import 'mainscreen.dart';

void main() {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '값을 입력하셈.',
              ),
            ),
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
