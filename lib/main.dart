import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:flipcard/animated_bottom_bar.dart';
import 'package:flipcard/Home.dart';
void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Home();
//  }
//}
//
//
//class Home extends StatefulWidget {
//  @override
//  _HomeState createState() => _HomeState();
//}
//
//class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
//
//  AnimationController controller;
//  Animation flip_anim;
//
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    controller = AnimationController(duration: Duration(seconds: 10),vsync: this);
//    flip_anim = Tween(begin: 0.0,end: 1.0).animate(
//      CurvedAnimation(
//        parent: controller,
//        curve: Interval(0.0,0.5,curve: Curves.linear)
//      )
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: AppBar(
//        title: new Text(
//          'Flip Card',
//        ),
//      ),
//      body: AnimatedBuilder(
//        animation: controller,
//        builder: (BuildContext context, Widget child){
//          return Center(
//            child: InkWell(
//              onTap: (){
//                controller.repeat();
//              },
//              child: Container(
//                height: 300.0,
//                width: 300.0,
//                child:  Transform(
//                  transform: Matrix4.identity()
//                  ..setEntry(3, 2, 0.005)
//                  ..rotateY(2 * 3.14 *flip_anim.value),
//                  alignment: Alignment.center,
//                  child: Container(
//                    height: 300.0,
//                    width: 300.0,
//                    color: Colors.blue[400].withOpacity(0.6),
//                    child: RotationTransition(
//                      turns: flip_anim,
//                      child: Center(
//                        child: Column(
//                          crossAxisAlignment: CrossAxisAlignment.center,
//                          children: <Widget>[
//                            Padding(padding: EdgeInsets.all(10.0),),
//                            Text('kgjkldfgnjdfgjkdf'),
//                            Text('kgjkldfgnjdfgjkdf'),
//                            Text('kgjkldfgnjdfgjkdf'),
//                            Text('kgjkldfgnjdfgjkdf')
//                          ],
//                        ),
//                      ),
//                    ),
//                  ),
//                ),
//              ),
//            ),
//          );
//        },
//      ),
//    );
//  }
//}
