import 'package:flutter/material.dart';
import 'package:flipcard/GUI/RegisterPage.dart';
import 'package:flipcard/GUI/LoginPage.dart';
import 'package:flipcard/animated_bottom_bar.dart';
import 'package:flipcard/GUI/cardview.dart';

import 'package:flipcard/GUI/searchkar.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomBar();
  }
}

class BottomBar extends StatefulWidget {

  final List<BarItem> barItems = [
    BarItem(text: "الحرف",
        iconData: Icons.home,
        color: Colors.blue),
    BarItem(text: "بحث",
        iconData: Icons.search,
        color: Colors.deepOrange),
    BarItem(
        text: "تسجيل",
        iconData: Icons.group_add,
        color: Colors.orange[600]),

    BarItem(
        text: "دخول",
        iconData: Icons.exit_to_app,
        color: Colors.deepPurple),
  ];

  /////////////////////////////////////////////////////////////////////////////


  final List<Widget> _widgetVeiw = <Widget>[


    KarView(),
    ///////////////////////

    SearchKar(),

    //////////////////////

    RegisterPage(),

    ////////////////////////
    LoginPage(),
  ];











  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int selectedBarIndex =0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: AnimatedContainer(
          //color: widget.barItems[selectedBarIndex].color,
          duration: const Duration(milliseconds: 500),
          child: widget._widgetVeiw[selectedBarIndex],
        ),
        bottomNavigationBar: AnimatedBottomBar(
          barItems :widget.barItems,
          animationDuration :  Duration(milliseconds: 150),
          onBarTap: (index) {
           setState(() {
             selectedBarIndex = index;
           });
          }
        ),

      ),
    );
  }
}
