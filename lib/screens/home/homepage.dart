import 'package:flutter/material.dart';

import '../../appbar/appbar.dart';



class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Hello homepage")
    );
  }
}
