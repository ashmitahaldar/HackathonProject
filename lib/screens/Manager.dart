import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:psg_hackathon_project/screens/community.dart';
import 'package:psg_hackathon_project/screens/home_page.dart';
import 'package:psg_hackathon_project/screens/job_search.dart';

import 'Destress.dart';

class Manager extends StatefulWidget {
  const Manager({Key? key}) : super(key: key);

  @override
  State<Manager> createState() => _ManagerState();
}

class _ManagerState extends State<Manager> {
  final List<Widget> pages = [
    HomePage(title: "Prise"),
    Destress(),
    Community(
      title: "Comm",
    ),
  ];

  final List<String> pg = ["Home", "Destress", "Community"];

  int index = 0;

  void change(int ind) {
    setState(() {
      index = ind;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            CupertinoSliverNavigationBar(
                heroTag: "Wwawa",
                backgroundColor: const Color(0xffff9197),
                largeTitle: Text(pg.elementAt(index),
                    style: TextStyle(color: Colors.white)),
                trailing: GestureDetector(
                  onTap: () {},
                ))
          ];
        },
        body: pages.elementAt(index),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color(0xff982D34),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "home",
                backgroundColor: const Color(0xff982D34)),
            BottomNavigationBarItem(
                icon: Icon(Icons.safety_check),
                label: "Destress",
                backgroundColor: const Color(0xff982D34)),
            BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: "Community",
                backgroundColor: const Color(0xff982D34)),
          ],
          currentIndex: index,
          onTap: change),
    );
  }
}
