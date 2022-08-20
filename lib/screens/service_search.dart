import 'package:flutter/material.dart';
import 'package:psg_hackathon_project/design/tile.dart';

class ServiceSearch extends StatefulWidget {
  const ServiceSearch({Key? key}) : super(key: key);

  @override
  State<ServiceSearch> createState() => _ServiceSearchState();
}

class _ServiceSearchState extends State<ServiceSearch> {
  final List<Tile> tiles = [
    Tile(
      name: "Homeless To Hope Adoption Agency",
      description: "LGBTQ/Special needs friendly adoption services available.",
    ),
    Tile(
      name: "SPC Wedding Planners",
      description: "LGBTQ friendly wedding planning services available.",
    ),
    Tile(
      name: "Better Mindset Counseling",
      description: "LGBTQ/Special needs friendly counseling services available.",
    ),
    Tile(
      name: "Harmony Hospital",
      description: "LGBTQ/Special needs friendly medical services available 24x7.",
    ),
    Tile(
      name: "Helping Paws",
      description: "Special needs friendly! Guide Dogs for the blind available.",
    ),
    Tile(
      name: "Transport for Handicapped Individuals",
      description: "Special needs friendly! Transport services available.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff9197),
        title: Text("Service Search"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Search for services!",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            ListView(
              primary: false,
              shrinkWrap: true,
              children: tiles,
            )
          ],
        ),
      ),
    );
  }
}
