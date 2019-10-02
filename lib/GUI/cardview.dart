import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;


import 'dart:convert';

class KarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CardView();
  }
}

class CardView extends StatefulWidget {
  @override
  _CardViewState createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: widgetKarData(),
      ),
    );
  }

  Future<List> getData() async {
    String myUrl = 'https://jsonplaceholder.typicode.com/users';
    http.Response response = await http.get(myUrl);
    return json.decode(response.body);
  }

  Widget widgetKarData() {
    return new FutureBuilder(
        future: getData(),

        // ignore: missing_return
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            List content = snapshot.data;
            return new Directionality(
                textDirection: TextDirection.rtl,
                child: Scaffold(
                  body: new ListView.builder(
                    padding: EdgeInsets.only(top: 40.0),
                    itemCount: content.length,
                    itemBuilder: (BuildContext context, int position) {
                      return Container(
                          margin: const EdgeInsets.only(
                            top: 10.0,
                            bottom: 10.0,
                            left: 15.0,
                            right: 15.0,
                          ),
                          child: new Stack(
                            children: <Widget>[
                          Container(
                              height: MediaQuery.of(context).size.width/1.8,
                                  width: MediaQuery.of(context).size.width,
                                  margin: new EdgeInsets.only(right: 46.0),
                              decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: new BorderRadius.circular(8.0),
                           boxShadow: <BoxShadow>[
                              new BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10.0,
                                offset: new Offset(0.0, 10.0),
                              ),
                            ],
                          ),
                            child: Container(
                              padding: EdgeInsets.only(
                                  top:MediaQuery.of(context).size.width/14,
                                  right: MediaQuery.of(context).size.width/7,

                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.person_outline,
                                        color: Colors.grey,
                                        size: 20.0,
                                      ),
                                      Padding(padding: EdgeInsets.only(right: 20.0),),
                                      Text(content[position]['name'],
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.grey
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 10.0),),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.build,
                                      color: Colors.grey,
                                      size: 20.0,
                                      ),
                                      Padding(padding: EdgeInsets.only(right: 20.0),),
                                      Text(content[position]['company']['name'],
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.grey
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 10.0),),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.phone,
                                        color: Colors.grey,
                                        size: 20.0,
                                      ),
                                      Padding(padding: EdgeInsets.only(right: 20.0),),
                                      Text(content[position]['phone'],
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.grey
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 5.0),),


                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on,
                                        color: Colors.grey,
                                        size: 20.0,
                                      ),
                                      Padding(padding: EdgeInsets.only(right: 10.0),),

                                      Text(content[position]['address']['street'],
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.grey
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(right: 10.0),),

                                      Material(
                                          elevation: 5.0,
                                          // borderRadius: BorderRadius.circular(15.0),
                                          color: Colors.blue[100],
                                          child: MaterialButton(
                                            minWidth: MediaQuery.of(context).size.width/5,

                                            onPressed: ()  {},
                                            child: Text("إتصال",
                                                textAlign: TextAlign.center,
                                                style:TextStyle(
                                                  fontSize: 18,

                                                )
                                            ),
                                          ),
                                        ),

                                    ],
                                  )
                                ],
                              )
                            ),
                        ),
                              Container(
                                height: 138,
                                margin:
                                    new EdgeInsets.symmetric(vertical: 35.0),
                                alignment: FractionalOffset.centerRight,
                                child: ClipOval(
                                  child: Image.asset(
                                    'img/worker.png',
                                    fit: BoxFit.cover,
                                    height: 100.0,
                                    width: 100.0,
                                  ),
                                ),
//
                              ),
                            ],
                          ));
                    },
                  ),
                ));
          } else {
            return new Directionality(
              textDirection: TextDirection.ltr,
              child: Scaffold(
                body: Center(child: CircularProgressIndicator()),
              ),
            );
          }
        });
  }
}
