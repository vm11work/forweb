import 'package:flutter/material.dart';
import 'dart:html';

void goFullScreen() {

    document.documentElement!.requestFullscreen();
}

void toggleFullScreen() {
    // if(io.Platform.isWindows) {
    if (document.fullscreenElement == null) {
      document.documentElement!.requestFullscreen();
    } else {
      document.exitFullscreen();
    }
}

class WebMaximum extends StatelessWidget {
  const WebMaximum({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
          onPressed: toggleFullScreen,
          tooltip: '전체 화면',
          child: const Icon(Icons.add),
        ); // This trailing comma makes auto-formatting nicer for build methods.
      //Container(child: Text('웹입니다.'),);
  }
}
