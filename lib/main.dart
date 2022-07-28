import 'package:flutter/material.dart';
import 'package:listtile/card_listtile.dart';
import 'package:listtile/listview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ListViewUsing(),
    );
  }
}
