import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HalamanSatu(),
    title: "Navigasi Syauqi",
    debugShowCheckedModeBanner: false,
     routes: <String, WidgetBuilder>{
      '/HalamanSatu': (BuildContext context) => new HalamanSatu(),
       '/HalamanDua': (BuildContext context) => HalamanDua(),
     },
  ));
}
class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Aplikasi Syauqi")),
      body: Center(
          child: IconButton(
        icon: Icon(
          Icons.home,
          size: 70,
          color: Colors.blue,
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/HalamanDua');
        },
      )),
    );
  }
}

class HalamanDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Aplikasi Syauqi Ke 2")),
      body: Center(
          child: IconButton(
        icon: Icon(
          Icons.heart_broken,
          size: 70,
          color: Colors.red,
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/HalamanSatu');
        },
      )),
    );
  }
}