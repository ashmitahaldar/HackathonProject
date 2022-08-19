import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override 
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF6C61),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('Prise'),
              trailing: GestureDetector(
                onTap: (){},
              )
            )
          ];
        },
        body: Column(
          children: <Widget>[
            SizedBox(height: 50),
            SizedBox(
              width: 200,
              height: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Community"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
          ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 200,
             height: 100,
             child: ElevatedButton(
              onPressed: () {},
              child: Text("Service Search"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
         ),
        ),
          SizedBox(height: 20),
          SizedBox(
            width: 200,
             height: 100,
             child: ElevatedButton(
              onPressed: () {},
              child: Text("Job Search"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red
                ),
         ),
        ),
          SizedBox(height: 20),
          SizedBox(
            width: 200,
             height: 100,
             child: ElevatedButton(
              onPressed: () {},
              child: Text("Connect"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                ),
         ),
        )
      ],
    ),
      ),
    );
  }
}

Widget _buildTitle() => Text(
  "Welcome to Prise!",
  textAlign: TextAlign.left,
);

