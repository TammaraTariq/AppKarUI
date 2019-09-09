import 'package:flutter/material.dart';



class AnimatedBottomBar extends StatefulWidget {

  final List<BarItem> barItems;
  final Duration animationDuration;
  final Function onBarTap;

  AnimatedBottomBar({this.barItems , this.animationDuration = const Duration(milliseconds: 500),this.onBarTap});

  @override
  _AnimatedBottomBarState createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar> with TickerProviderStateMixin{

  int selectBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      child: Padding(
        padding: const EdgeInsets.only(bottom:32.0,top: 16.0,right: 16.0,left: 16.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _buildBarItems(),
        ),
      ),
    );
  }
  List<Widget> _buildBarItems(){
    List<Widget> _barItems = List();
    for(int i = 0 ; i< widget.barItems.length; i++){
      BarItem item = widget.barItems[i];
      bool isSelected = selectBarIndex == i;
      _barItems.add(InkWell(
        splashColor: Colors.transparent,
        onTap: (){
          setState(() {
              selectBarIndex = i;
              widget.onBarTap(selectBarIndex);
          });
        },
        child: AnimatedContainer(
          padding: const EdgeInsets.symmetric(horizontal: 16.0 ,vertical: 8.0),
          duration: widget.animationDuration,
          decoration:BoxDecoration(
            color: isSelected ? item.color.withOpacity(0.3) : Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(30))
          ),
          child: Row(
            children: <Widget>[
              Icon(item.iconData ,

                color: isSelected ? item.color : Colors.black,size: 32.0,
              ),
              SizedBox(width: 10.0,),
              AnimatedSize(
                duration: widget.animationDuration,
                curve: Curves.easeInOut,
                vsync: this,
                child: Text(
                  isSelected ? item.text : '',
                style: TextStyle(
                    color: item.color,
                    fontSize: 20.0,
                    fontWeight:FontWeight.w600),),
              )
            ],
          ),

        ),
      ));
    }
    return _barItems;
  }
}




class BarItem {
  String text;
  IconData iconData;
  Color color;


  BarItem({this.text , this.iconData , this.color});
}