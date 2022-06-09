import 'package:flutter/material.dart';
import 'package:tab_app/src/screens/contact.dart';
import 'package:tab_app/src/screens/home.dart';
import 'package:tab_app/src/screens/video.dart';

class Mytabs extends StatefulWidget {
  const Mytabs({Key? key}) : super(key: key);

  @override
  State<Mytabs> createState() => _MytabsState();
}

class _MytabsState extends State<Mytabs> {
  @override
  Widget build(BuildContext context) {
    return
      DefaultTabController(length: 3, child:
      Scaffold(
      appBar: AppBar(
        title: Text("Video tabs"),
         backgroundColor: Colors.redAccent,
         bottom: TabBar(
           tabs: <Widget>[
              Tab(icon: Icon(Icons.home)),
             Tab(icon: Icon(Icons.ondemand_video)),
              Tab(icon: Icon(Icons.contact_page))
         ],),
      ) ,
        body: TabBarView(
          children: <Widget>[
            Home(),Video(),Contact()
          ],
        ),
    ));
  }
}
