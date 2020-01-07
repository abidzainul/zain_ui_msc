import 'package:flutter/material.dart';
import 'package:zain_ui_msc/button/btn_filter_top.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SCM SI',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.red,
        primaryColorDark: Colors.red[900],
        accentColor: Colors.indigo,
        iconTheme: IconThemeData(color: Colors.grey[700]),
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("sample"),
        ),
        body: Column(
          children: <Widget>[
            ButtonFilterTop(
              children: <Widget>[
                ItemButtonFilterTop(
                  text: "filter",
                  onPressed: () {

                  },
                ),
              ],
            ),
            Expanded(
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
