import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:psg_hackathon_project/screens/home_page.dart';

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
    Container(),
  ];

  final List<String> pg = ["Home", "Destress", "Container,"];

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
          backgroundColor: const Color(0xffff9197),
          fixedColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.safety_check), label: "Destress"),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_mail), label: "Test"),
          ],
          currentIndex: index,
          onTap: change),
    );
  }
}
