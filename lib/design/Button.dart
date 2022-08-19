import "package:flutter/material.dart";
import 'package:psg_hackathon_project/screens/Destress.dart';
import 'package:psg_hackathon_project/screens/Manager.dart';
import 'package:psg_hackathon_project/screens/home_page.dart';

class Button extends StatelessWidget {
  Color color;
  String text;

  Function onpress;

  Button(
      {Key? key,
      required this.color,
      required this.text,
      required this.onpress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Manager()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width - 50,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.only(top: 10),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
