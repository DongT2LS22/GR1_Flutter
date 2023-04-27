import 'package:flutter/material.dart';
import 'package:gr_flt/appbar/appbar.dart';
import 'package:gr_flt/screens/home/homepage.dart';
import 'package:gr_flt/screens/home/profilepage.dart';
import 'package:gr_flt/screens/home/studypage.dart';


class Home extends StatefulWidget {
  final int indexPage = 0;
  final List<Widget> tabs = [HomePage(), StudyPage(), ProfilePage()];

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int _indexpage;

  @override
  void initState() {
    super.initState();
    _indexpage = widget.indexPage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.tabs[_indexpage],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28,
        backgroundColor: Color.fromRGBO(43, 54, 71, 1),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),
              label: "Home",
              activeIcon:
              Icon(Icons.home, color: Color.fromRGBO(255, 187, 0, 1))),
          BottomNavigationBarItem(
              icon: Icon(Icons.school, color: Colors.white),
              label: "Study",
              activeIcon:
              Icon(Icons.school, color: Color.fromRGBO(255, 187, 0, 1))),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.white),
              label: "Profile",
              activeIcon:
              Icon(Icons.person, color: Color.fromRGBO(255, 187, 0, 1))),
        ],
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),
        unselectedItemColor: Colors.white,
        selectedItemColor: Color.fromRGBO(255, 187, 0, 1),
        currentIndex: _indexpage,
        onTap: (index) {
          setState(() {
            _indexpage = index;
          });
        },
      ),
      appBar: AppBarPopup(),
    );
  }
}

