import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:flutter/material.dart";

class Tile extends StatelessWidget {
  String name;
  String description;
  Tile({Key? key, required this.name, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(name),
          isThreeLine: true,
          subtitle: Text(description),
          leading: CircleAvatar(
              radius: 20,
              foregroundImage: Image.asset(
                "assets/hackathon-psg-removebg-preview.png",
                scale: 100,
              ).image),
        ),
        Divider(),
      ],
    );
  }
}

// Text(
//   "LGBTQ/Special need friendly job offer!\nNext Job interview available in 5 hours, 3km away from your location")