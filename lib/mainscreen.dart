import 'package:flutter/material.dart';
import 'package:forweb/notificationservice.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState()
  {
    super.initState();
    tz.initializeTimeZones();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NotificationService().showNotification(1,'이건 엄청난 소식이에요.!!!! 집중하세요. ','상세내용은 아래와 같아요. ',1);

      },
        child: Container(
          height: 40,
          width: 200,
          color: Colors.green,
          child: Center(
            child: Text('abcde'),
          ),
        )
    );
  }
}
