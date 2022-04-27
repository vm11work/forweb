// Place fonts/icomoon.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: icomoon
//      fonts:
//       - asset: fonts/icomoon.ttf
import 'package:flutter/widgets.dart';
// import 'package:reflectable/reflectable.dart';

class Icomoon {
  //   extends Reflectable{
  // const Icomoon()
  //     : super(invokingCapability); // Request the capability to invoke methods.


  Icomoon._();

  static const String _fontFamily = 'icomoon';

  static const IconData gd_andong = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData gyodang_jongro = IconData(0xe904, fontFamily: _fontFamily);
  static const IconData unbong = IconData(0xe908, fontFamily: _fontFamily);
}
