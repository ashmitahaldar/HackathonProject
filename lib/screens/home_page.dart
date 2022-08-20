import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psg_hackathon_project/screens/Destress.dart';
import 'package:psg_hackathon_project/screens/community.dart';
import 'package:psg_hackathon_project/screens/job_search.dart';

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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 40),

              const Text(
                "Welcome!",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),

              SizedBox(height: 20),

              Container(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 300,
                  height: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Service Search"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                    ),
                  ),
                ),
                // SizedBox( //sized boix for community
                //   width: 200,
                //   height: 100,
                //   child: ElevatedButton(
                //     onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Community(title: "Comm"))),
                //     child: Text("Community"),
                //     style: ElevatedButton.styleFrom(
                //       primary: Colors.green,
                //     ),
                //   ),
                // ),
              ),

              SizedBox(height: 20),
              SizedBox(
                width: 300,
                height: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => JobSearch()));
                  },
                  child: Text("Job Search"),
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                ),
              ),
              SizedBox(height: 20),
              // SizedBox(
              //   width: 200,
              //   height: 100,
              //   child: ElevatedButton(
              //     onPressed: () {},
              //     child: Text("Connect"),
              //     style: ElevatedButton.styleFrom(
              //       primary: Colors.orange,
              //     ),
              //   ),
              // )
            ],
          ),
        ));
  }
}

Widget _buildTitle() => Text(
      "Welcome to Prise!",
      textAlign: TextAlign.left,
    );
