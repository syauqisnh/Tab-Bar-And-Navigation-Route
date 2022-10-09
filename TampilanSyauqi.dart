import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Center(
        child: Column(children: <Widget>
         [
          new Padding(padding: EdgeInsets.all(20)),
          new Text("Syauqi Nur Hibatullah", style: new TextStyle(fontSize: 30),),
          new Padding(padding: EdgeInsets.all(20)),
          new Icon(Icons.person, size: 90,),
         ],
         )
        ),
    );
  }
}