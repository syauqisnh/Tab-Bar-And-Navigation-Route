import 'package:flutter/material.dart';
import './ui/TampilanSyauqi.dart' as person;
import './ui/school.dart' as school;
import './ui/date.dart' as date;

void main() {
  runApp(new MaterialApp(
    home: new HalamanSatu(),
    title: "Navigasi Syauqi",
    debugShowCheckedModeBanner: false,
    // routes: <String, WidgetBuilder>{
    //   '/HalamanSatu': (BuildContext context) => new HalamanSatu(),
    //   '/HalamanDua': (BuildContext context) => HalamanDua(),
    // },
  ));
}

class HalamanSatu extends StatefulWidget {
  @override
  State<HalamanSatu> createState() => _HalamanSatuState();
}

class _HalamanSatuState extends State<HalamanSatu>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Aplikasi Syauqi"),
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: Icon(
                Icons.school,
                size: 30,
              ),
              text: 'Instansi',
            ),
            new Tab(
              icon: Icon(
                Icons.date_range,
                size: 30,
              ),
              text: 'Tanggal',
            ),
            new Tab(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              text: 'Profil',
            ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new school.School(),
          new date.Date(),
          new person.Person(),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.red,
        child: TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: Icon(
                Icons.school,
                size: 30,
              ),
            ),
            new Tab(
              icon: Icon(
                Icons.date_range,
                size: 30,
              ),
            ),
            new Tab(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class HalamanDua extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: AppBar(title: Text("Aplikasi Syauqi Ke 2")),
//       body: Center(
//           child: IconButton(
//         icon: Icon(
//           Icons.heart_broken,
//           size: 50,
//         ),
//         onPressed: () {
//           Navigator.pushNamed(context, '/HalamanSatu');
//         },
//       )),
//     );
//   }
// }
