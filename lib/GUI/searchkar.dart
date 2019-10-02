import 'package:flipcard/Home.dart';
import 'package:flutter/material.dart';

class SearchKar extends StatefulWidget {
  @override
  _SearchKarState createState() => _SearchKarState();
}

class _SearchKarState extends State<SearchKar> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(title: Text("إبحث عن حرفة"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
            )
          ],
        ),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {

  final Kars = [
    "Leanne Graham",
    "Ervin Howell",
    "Clementine Bauch",
    "Patricia Lebsack",
    "Chelsey Dietrich",
    "Mrs. Dennis Schulist",
    "Kurtis Weissnat",
    "Glenna Reichert"
  ];

  final recentKars=[
    "Clementina DuBuque",
    "Glenna Reichert",
    "Patricia Lebsack"

  ];



  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: (){
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    final suggestionList = query.isEmpty ? recentKars :Kars.where((p)=>p.startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggestionList.length,
        itemBuilder: (context,index)=>
      ListTile(
        leading:Icon(Icons.build) ,
        title: RichText(
          text: TextSpan(
            text: suggestionList[index].substring(0,query.length),
            style: TextStyle(
              color: Colors.black,fontWeight: FontWeight.bold
            ),
            children: [
              TextSpan(
                text: suggestionList[index].substring(query.length),
                style: TextStyle(
                  color: Colors.grey
                )
              ),
            ]
          ),
        ),
       onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context)=>Home()
              )
          );
       },
      ),
    );
  }
}
