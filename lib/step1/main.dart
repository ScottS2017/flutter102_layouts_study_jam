import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  String title = '1) Rudimentary Layouts';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
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

            /// You need an expanded when nesting rows and columns or thing blow up.
            /// "Unbounded" size limits (called "Constraints")
            Expanded(
              child: Container(
                height: 100,

                /// No width needed since the expanded will eat up everything left over.
                /// Even if we did put a width here, it would be ignored.
                color: Colors.green,
              ),
            ),
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
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 200,
        ),
        Container(
          width: MediaQuery.of(context).size.width * .9,
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(width: 2.0, color: const Color(0x55000000)),
          ),
        ),
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