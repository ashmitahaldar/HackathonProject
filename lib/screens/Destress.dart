import "package:flutter/material.dart";

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
      appBar: AppBar(
        backgroundColor: const Color(0xffff9197),
        title: Text("Destress."),
      ),
      body: Container(
        child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              children: [],
            ),
            Text("Destress"),
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
