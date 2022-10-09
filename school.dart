import 'package:flutter/material.dart';

class School extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Center(
        child: Column(children: <Widget>
         [
          new Padding(padding: EdgeInsets.all(20)),
          new Text("Universitas Sebelas Maret", style: new TextStyle(fontSize: 30),),
          new Padding(padding: EdgeInsets.all(20)),
          new Icon(Icons.school, size: 90,),
         ],
         )
        ),
    );
  }
}