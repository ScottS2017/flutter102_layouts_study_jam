import 'package:flutter/material.dart';
import 'package:flutter102_layout_n_route/step2/TextSection.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  String title = 'Flutter Layout Tutorial - 2';

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          padding:EdgeInsets.symmetric(vertical:  200, horizontal: 50),
          child: TextSection()),
      ),
    );
  }
}