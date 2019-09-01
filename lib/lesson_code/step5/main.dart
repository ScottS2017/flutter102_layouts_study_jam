import 'package:flutter/material.dart';
import 'package:flutter102_layout_n_route/app/app_strings.dart';
import 'package:flutter102_layout_n_route/lesson_code/step5/ButtonSection.dart';

// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  String title = AppStrings.step5;

  Color color;

  @override
  Widget build(BuildContext context) {

    /// The color variable needs to be instantiated inside the build method because context doesn't exist before it
    color = Theme.of(context).primaryColor;

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          child: Container(
            height: 120,
            width: double.infinity,
            child: ButtonSection(
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}