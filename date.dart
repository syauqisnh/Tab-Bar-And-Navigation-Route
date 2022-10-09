import 'package:flutter/material.dart';

class Date extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Center(
        child: Column(children: <Widget>
         [
          new Padding(padding: EdgeInsets.all(20)),
          new Text("08 Oktober 2022", style: new TextStyle(fontSize: 30),),
          new Padding(padding: EdgeInsets.all(20)),
          new Icon(Icons.date_range, size: 90,),
         ],
         )
        ),
    );
  }
}