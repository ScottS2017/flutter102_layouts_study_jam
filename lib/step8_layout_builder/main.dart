import 'package:flutter/material.dart';
import 'package:flutter102_layout_n_route/app/app_strings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  /// Personal style choice: Declare a title String up here and just use the var below
  String title = AppStrings.step7;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(

        /// It's always better to use a resource file for colors and refer to it, but this is just a basic example.
        primarySwatch: Colors.blue,
      ),
      home: Home(title: title),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(title),
      ),
      backgroundColor: Colors.white,
      body: PageContent(),
    );
  }
}

class PageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            /// The below media query will return the screen dimensions.
            ///  Since we already need an Expanded to make this work, we can make the width of 2 of these
            ///  Containers one-third of the screen width and then make the third Container use all leftover space.
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width / 3,
              color: Colors.purple,
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width / 3,
              color: Colors.red,
            ),

            /// You need an expanded when nesting rows and columns or thing blow up.
            /// It causes issues with "Unbounded" size limits (called "Constraints")
            Expanded(
              child: Container(
                height: 100,

                /// No width specification is needed since the Expanded will eat up everything that's left over.
                /// Even if we did put a width here, it would be ignored.
                color: Colors.green,
              ),
            ),
          ],
        ),

        /// This is one way of creating separation between two items. Another is to give one of them margin (Below)
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 100,
        ),

        /// Using margin to do the same thing. Also using double.infinity to achieve "match_parent".
        Container(
          margin: EdgeInsets.only (top: 0 , bottom: 100 , right: 0, left: 0),
          height: 10,
          width: double.infinity,
          color: Colors.brown,
        ),

        /// How to use a decoration to place a border around your Container. Be sure to leave space
        /// all the way around the item to ensure the border won't be lost at the screen edge.
        Container(
          width: MediaQuery.of(context).size.width * .9,
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(width: 2.0, color: const Color(0x55000000)),
          ),
        ),

        /// Using an expanded again, this time to eat up all leftover space at the bottom.
        Expanded(
          child: SizedBox(
            width: 1,
            height: 1,
          ),
        ),
      ],
    );
  }
}
