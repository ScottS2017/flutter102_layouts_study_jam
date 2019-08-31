import 'package:flutter/material.dart';
import 'package:flutter102_layout_n_route/app/app_strings.dart';
import 'package:flutter102_layout_n_route/step6/ButtonSection.dart';
import 'package:flutter102_layout_n_route/step6/TextSection.dart';
import 'package:flutter102_layout_n_route/step6/TitleSelection.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Color color;
  String title = AppStrings.step6;

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
        body: ListView(
          children: [
            Image.asset(
              'assets/step_2_images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            const TitleSelection(),
            ButtonSection(
              color: color,
            ),
            const TextSection(),
          ],
        ),
      ),
    );
  }
}