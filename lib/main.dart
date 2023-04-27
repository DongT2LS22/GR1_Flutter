import 'package:flutter/material.dart';
import 'package:gr_flt/screens/home/home.dart';


void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(255, 187, 0, 1) ,
      ),
      home: SafeArea(
        child : Home(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}




