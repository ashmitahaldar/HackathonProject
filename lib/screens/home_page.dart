import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psg_hackathon_project/screens/Destress.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> pages = [
    Destress(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF6C61),
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              CupertinoSliverNavigationBar(
                  backgroundColor: const Color(0xffff9197),
                  largeTitle: Text('Prise'),
                  trailing: GestureDetector(
                    onTap: () {},
                  ))
            ];
          },
          body: Center(
            child: SizedBox(
              width: 100,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("test"),
              ),
            ),
          )),
      bottomNavigationBar: BottomNavigationBar(items: []),
    );
  }
}

Widget _buildTitle() => Text(
      "Welcome to Prise!",
      textAlign: TextAlign.left,
    );
