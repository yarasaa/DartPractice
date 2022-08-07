import 'package:flutter/material.dart';
import 'package:listtile/card_listtile.dart';
import 'package:listtile/list_view_layout_problem.dart';
import 'package:listtile/listview.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp(MyApp());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.grey
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.black
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = true;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ListViewLayoutProblem(),
      builder: EasyLoading.init(),
    );
  }
}
