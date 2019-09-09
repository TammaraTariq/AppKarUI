import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';





class SimpleTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return RegisterPage();
  }
}

class RegisterPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegisterPageState();
  }

}

class _RegisterPageState extends State<RegisterPage>{
  final List<String> dropValueList = [

    "خدمات الدهان",
    "التنظيفات",
    "خدمات كهربائية",
    "بناء مقاولات",
    "التكييف والتبرييد",
    "ابواب - شبابيك",
    "صيانة سيارات",
    "خدمات نجارة",
    "خدمات حدائق",
    "خدمات لحام",
    "خدمات نقل",
    "الطعام",
    "كاميرات مراقبة"
  ];
  String dropValue = "خدمات الدهان";
  void _newItemSelected(String newValueSelected) {
    setState(() {
      dropValue = newValueSelected;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new DefaultTabController(
      length: 2,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: new Scaffold(
          appBar: new AppBar(
backgroundColor: Colors.orange[600],
            iconTheme:IconThemeData(color: Colors.white),
            //title: new Text("Smiple Tab Demo"),
            bottom: new TabBar(

              labelColor: Colors.white,
              tabs: <Widget>[
                new Tab(
                  child: Text('حساب حرفي',
                    style: TextStyle(fontSize: 20.0),),
                  icon: Icon(Icons.person),

                ),
                new Tab(
                  child: Text('حساب عادي',
                    style: TextStyle(fontSize: 20.0),),
                  icon: Icon(Icons.perm_identity),
                ),

              ],
            ),
          ),
          body: new TabBarView(
            children: <Widget>[
              new Container(
                color: Colors.white,
                child: new Center(
                  child: ListView(
                    padding: EdgeInsets.only(top: 20.0,
                        left: 30.0,
                        right: 30.0
                    ),
                    children: <Widget>[
                      SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.width / 3,
                        child: Image.asset(
                          "img/worker.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top:15.0),),
                      TextField(
                        obscureText: false,
                        style: TextStyle(fontSize: 20.0),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          hintText: " الأسم الأول",
                          icon: Icon(Icons.person),
//                            border:
//                            OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)
//                            )
                        ),
                        keyboardType: TextInputType.text,

                      ),
                      Padding(padding: EdgeInsets.only(top:15.0),),
                      TextField(
                        obscureText: false,
                        style: TextStyle(fontSize: 20.0),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          hintText: " الأسم الثاني",
                          icon: Icon(Icons.people),
//                            border:
//                            OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)
//                            )
                        ),
                        keyboardType: TextInputType.text,

                      ),
                      Padding(padding: EdgeInsets.only(top:15.0),),
                      TextField(
                        obscureText: false,
                        style: TextStyle(fontSize: 20.0),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          hintText: "رقم الهاتف",
                          icon: Icon(Icons.phone),
//                            border:
//                            OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)
//                            )
                        )
                        ,
                        keyboardType: TextInputType.phone,
                      ),
                      Padding(padding: EdgeInsets.only(top:15.0),),
                      TextField(
                        obscureText: false,
                        style: TextStyle(fontSize: 20.0),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          hintText: "العنوان",
                          icon: Icon(Icons.location_on),
//                            border:
//                            OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)
//                            )
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top:15.0),),

                      DropdownButton<String>(

                        value: dropValue,
                        onChanged: (String newValueSelected) {
                          _newItemSelected(newValueSelected);
                        },
                        items: dropValueList.map((String dropDownItemsKar) {
                          return DropdownMenuItem<String>(
                            value: dropDownItemsKar,
                            child: Text(dropDownItemsKar,
                              style: TextStyle(fontSize: 20.0),),
                          );
                        }).toList(),
                        isExpanded: true,
                        iconSize: 35,
                        elevation: 0,

                      ),

                      Padding(padding: EdgeInsets.only(top:10.0),),
                      Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.orange[600],
                        child: MaterialButton(
                          minWidth: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          onPressed: ()  {},
                          child: Text("تسجيل",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20.0).copyWith(
                                  color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top:20.0),),
                    ],
                  ),
                ),
              ),



              new Container(
                color: Colors.white,
                child: new Center(
                  child: new ListView(
                    padding: EdgeInsets.only(top: 20.0,left: 30.0,right: 30.0),
                    children: <Widget>[
                      SizedBox(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.width / 3,
                        child: Image.asset(
                          "img/person.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top:15.0),),
                      TextField(
                        obscureText: false,
                        style: TextStyle(fontSize: 20.0),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          hintText: " الأسم الأول",
                          icon: Icon(Icons.person),
//                            border:
//                            OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)
//                            )
                        ),
                        keyboardType: TextInputType.text,

                      ),
                      Padding(padding: EdgeInsets.only(top:15.0),),
                      TextField(
                        obscureText: false,
                        style: TextStyle(fontSize: 20.0),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          hintText: " الأسم الثاني",
                          icon: Icon(Icons.people),
//                            border:
//                            OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)
//                            )
                        ),
                        keyboardType: TextInputType.text,

                      ),
                      Padding(padding: EdgeInsets.only(top:15.0),),
                      TextField(
                        obscureText: false,
                        style: TextStyle(fontSize: 20.0),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          hintText: "رقم الهاتف",
                          icon: Icon(Icons.phone),
//                            border:
//                            OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)
//                            )
                        )
                        ,
                        keyboardType: TextInputType.phone,
                      ),
                      Padding(padding: EdgeInsets.only(top:15.0),),
                      TextField(
                        obscureText: false,
                        style: TextStyle(fontSize: 20.0),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          hintText: "العنوان",
                          icon: Icon(Icons.location_on),
//                            border:
//                            OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)
//                            )
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top:15.0),),



                      Padding(padding: EdgeInsets.only(top:10.0),),
                      Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.orange[600],
                        child: MaterialButton(
                          minWidth: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          onPressed: ()  {},
                          child: Text("تسجيل",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20.0).copyWith(
                                  color: Colors.white, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top:20.0),),
                      Text('أو قم بالسجيل عبر :',
                        style: TextStyle(
                            fontSize: 20.0
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top:20.0),),
                      Row(
                        children: <Widget>[
                          Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.red,
                            child: MaterialButton(
                              minWidth: MediaQuery.of(context).size.width/40,
                              padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                              onPressed: ()  {},
                              child: Text("Google +",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20.0).copyWith(
                                    color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/30,
                              right:  MediaQuery.of(context).size.width/10),),
                          Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.blue,
                            child: MaterialButton(
                              minWidth: MediaQuery.of(context).size.width/20,
                              padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                              onPressed: ()  {},
                              child: Text("Facebook",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20.0).copyWith(
                                      color: Colors.white, fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top:20.0),),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

}




































//
//class RegisterPage extends StatefulWidget {
//
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return RegisterPageState();
//  }
//}
//
//class RegisterPageState extends State<RegisterPage> {
//  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
//  final List<String> dropValueList = [
//
//    "خدمات الدهان",
//    "التنظيفات",
//    "خدمات كهربائية",
//    "بناء مقاولات",
//    "التكييف والتبرييد",
//    "ابواب - شبابيك",
//    "صيانة سيارات",
//    "خدمات نجارة",
//    "خدمات حدائق",
//    "خدمات لحام",
//    "خدمات نقل",
//    "الطعام",
//    "كاميرات مراقبة"
//  ];
//  String dropValue = "خدمات الدهان";
//  void _newItemSelected(String newValueSelected) {
//    setState(() {
//      dropValue = newValueSelected;
//    });
//  }
//  @override
//  Widget build(BuildContext context) {
//    final fnameField = TextField(
//      obscureText: false,
//      style: style,
//      decoration: InputDecoration(
//          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//          hintText: " الأسم الأول",
//          border:
//              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
//      keyboardType: TextInputType.text,
//    );
//    final snameField = TextField(
//      obscureText: false,
//      style: style,
//      decoration: InputDecoration(
//          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//          hintText: " الأسم الثاني",
//          border:
//          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
//      keyboardType: TextInputType.text,
//    );
//    final phoneField = TextField(
//      obscureText: false,
//      style: style,
//      decoration: InputDecoration(
//          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//          hintText: "رقم الهاتف",
//          border:
//              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
//      keyboardType: TextInputType.phone,
//    );
//    final signUpButom = Material(
//      elevation: 5.0,
//      borderRadius: BorderRadius.circular(30.0),
//      color: Colors.orange[600],
//      child: MaterialButton(
//        minWidth: MediaQuery.of(context).size.width,
//        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//        onPressed: ()  {},
//        child: Text("تسجيل",
//            textAlign: TextAlign.center,
//            style: style.copyWith(
//                color: Colors.white, fontWeight: FontWeight.bold)),
//      ),
//    );
//
//
//
//    final addressField = TextField(
//      obscureText: false,
//      style: style,
//      decoration: InputDecoration(
//          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//          hintText: "العنوان",
//          border:
//              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
//    );
//
//
//
//    final dropDownKar = DropdownButton<String>(
//
//      value: dropValue,
//      onChanged: (String newValueSelected) {
//        _newItemSelected(newValueSelected);
//      },
//      items: dropValueList.map((String dropDownItemsKar) {
//        return DropdownMenuItem<String>(
//          value: dropDownItemsKar,
//          child: Text(dropDownItemsKar,
//          style: style,),
//        );
//      }).toList(),
//        isExpanded: true,
//        iconSize: 35,
//      elevation: 0,
//
//    );
//
//    // TODO: implement build
//    return Directionality(
//      textDirection: TextDirection.rtl,
//      child: new Scaffold(
//        appBar: AppBar(
//          elevation: 0,
//          title:Text("تسجيل",
//          style: TextStyle(
//              fontFamily: 'Montserrat',
//              fontSize: 20.0,
//            color: Colors.white
//          ),
//          ),
//          iconTheme: IconThemeData(
//            color: Colors.white, //change your color here
//          ),
//        ),
//
//
//        body: ListView(
//          children: <Widget>[
//            new Center(
//              child: Container(
//                padding: EdgeInsets.only(left: 24, right: 24, top: 30),
//                color: Colors.white,
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    SizedBox(
//                      width: double.infinity,
//                      height: MediaQuery.of(context).size.width / 3,
//                      child: Image.asset(
//                        "img/worker.png",
//                        fit: BoxFit.contain,
//                      ),
//                    ),
//                    SizedBox(
//                        width: double.infinity,
//                        height: MediaQuery.of(context).size.width / 17),
//                    fnameField,
//
//                    SizedBox(
//                        width: double.infinity,
//                        height: MediaQuery.of(context).size.width / 17),
//                    snameField,
//
//                    SizedBox(
//                        width: double.infinity,
//                        height: MediaQuery.of(context).size.width / 17),
//                    phoneField,
//                    SizedBox(
//                        width: double.infinity,
//                        height: MediaQuery.of(context).size.width / 17),
//                    addressField,
//                    SizedBox(
//                        width: double.infinity,
//                        height: MediaQuery.of(context).size.width / 17),
//
////
//                    SizedBox(
//                            width: double.infinity,
//                            height: MediaQuery.of(context).size.width / 19,
//
//                             ),
//                    dropDownKar,
//
//
//                    SizedBox(
//
//                      width: double.infinity,
//                      height: MediaQuery.of(context).size.width / 18,
//                    ),
//        Padding(padding: EdgeInsets.only(bottom: 10.0) ),
//                    signUpButom,
//                    Padding(padding: EdgeInsets.only(bottom: 25.0) ),
//                  ],
//                ),
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//
//
//
//
//
