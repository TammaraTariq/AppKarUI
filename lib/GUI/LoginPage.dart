import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginPageState();
  }

}

class LoginPageState extends State<LoginPage>{

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final nameField = TextField(
      obscureText: false,
      style: style,
      keyboardType: TextInputType.text,

      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "ألاسم",
          icon: Icon(Icons.person)
//          border:
//          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)
//          )
      ),
    );

    final phoneField = TextField(
      obscureText: false,
      style: style,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "رقم الهاتف",
          icon: Icon(Icons.phone)
//          border:
//          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );


    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.deepPurple,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("دخول",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    final signUpButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.orange[600],
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: ()  {Navigator.of(context).pushNamed('/RegisterPage');},
        child: Text("إنشاء حساب جديد",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );





    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,

//        appBar: AppBar(
//          title: new Text('تسجيل الدخول',
//            style: TextStyle(
//                fontFamily: 'Montserrat',
//                fontSize: 20.0,
//                color: Colors.white
//            ),
//          ),
//          iconTheme: IconThemeData(
//            color: Colors.white, //change your color here
//          ),
//          backgroundColor: Colors.blue[400],
//          elevation: 0,
//
//        ),

        body: ListView(
          children: <Widget>[
            new Center(
              child:  Container(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 15,
                    right: MediaQuery.of(context).size.width / 15,
                    top: MediaQuery.of(context).size.width / 15),
                color: Colors.white,
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 150.0,
                      child: Image.asset(
                        "img/worker.png",
                        fit: BoxFit.contain,
                      ),
                    ),

                    SizedBox(height:MediaQuery.of(context).size.width / 10),
                    Padding(padding: EdgeInsets.only(right: 30.0,left: 20.0),),
                    nameField,
                    SizedBox(height:MediaQuery.of(context).size.width / 12),
                    phoneField,
                    SizedBox(
                      height:MediaQuery.of(context).size.width /6,
                    ),
                    loginButon,
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 12,
                    ),
                    //signUpButon,
                    SizedBox(
                      height:MediaQuery.of(context).size.width / 12,
                    ),
                  ],
                ),
              ),

            ),
          ],

        ),
      ),
    );
  }









}