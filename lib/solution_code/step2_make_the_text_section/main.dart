import 'package:flutter/material.dart';
import 'package:flutter102_layout_n_route/app/app_strings.dart';
import 'package:flutter102_layout_n_route/solution_code/step2_make_the_text_section/TextSection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  String title = AppStrings.step2;

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