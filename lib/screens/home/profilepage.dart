import 'package:flutter/material.dart';

import '../../appbar/appbar.dart';


class ProfilePage extends StatefulWidget {

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text("Hello profilepage")
    );
  }
}
