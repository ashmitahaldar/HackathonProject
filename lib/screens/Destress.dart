import "package:flutter/material.dart";
import 'package:psg_hackathon_project/design/MessageTile.dart';

class Destress extends StatefulWidget {
  Destress({Key? key}) : super(key: key);

  @override
  State<Destress> createState() => _DestressState();
}

class _DestressState extends State<Destress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF6C61),
      body: Container(
        child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                MessageTile(
                    message: "You can talk to me about your problems.",
                    imgPath: "assets/hackathon-psg-removebg-preview.png",
                    isLeft: true),
                MessageTile(
                    message: "Thank you so much.",
                    imgPath: "assets/hackathon-psg-removebg-preview.png",
                    isLeft: false),
              ],
            ),
            Expanded(child: Container()),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Talk to someone, anonymously.",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
