import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'loginUI.dart';
import 'background.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'khbichoo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MyHomePage(title: 'akhbach bark') ,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key ,this.title}) : super(key : key) ;
  final String title ;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Background(),
            Login(),
          ],
        ));
  }
}


