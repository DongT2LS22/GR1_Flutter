import 'package:flutter/material.dart';
import 'package:gr_flt/screens/home/homepage.dart';

class AppBarPopup extends StatefulWidget with PreferredSizeWidget {
  const AppBarPopup({super.key});

  @override
  State<AppBarPopup> createState() => _AppBarPopupState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _AppBarPopupState extends State<AppBarPopup> {
  List<String> items = [
    'Item1 hehehehehehehehe',
    'Item2 abcdefgh',
    'Item3',
    'Item4'
  ];
  String? selectedItem = 'Item2 abcdefgh';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(43, 54, 71, 1),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: DropdownButton(
              menuMaxHeight: 200,
              underline: SizedBox(),
              value: selectedItem,
              items: items
                  .map((e) => DropdownMenuItem(
                        child: Container(
                          width: 150,
                          child: Text(
                            e,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            overflow: TextOverflow.fade,
                          ),
                        ),
                        value: e,
                      ))
                  .toList(),
              onChanged: (item) => setState(() {
                selectedItem = item;
              }),
              dropdownColor: Color.fromRGBO(43, 54, 71, 1),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: Container(
              width: 150,
              child: Text("Dong Pham",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),overflow: TextOverflow.ellipsis,),
            ),
          )
        ],
      ),
    );
  }
}
