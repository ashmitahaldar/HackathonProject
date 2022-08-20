import 'package:flutter/material.dart';
import 'package:psg_hackathon_project/design/tile.dart';

class JobSearch extends StatefulWidget {
  const JobSearch({Key? key}) : super(key: key);

  @override
  State<JobSearch> createState() => _JobSearchState();
}

class _JobSearchState extends State<JobSearch> {
  final List<Tile> tiles = [
    Tile(
      name: "Job 1",
      description: "LGBTQ/Special need friendly job offer!\nNext Job interview available in 5 hours, 3km away from your location",
    ),
    Tile(
      name: "Job 2",
      description: "LGBTQ/Special need friendly job offer!\nNext Job interview available in 5 hours, 3km away from your location",
    ),
    Tile(
      name: "Job 3",
      description: "LGBTQ/Special need friendly job offer!\nNext Job interview available in 5 hours, 3km away from your location",
    ),
    Tile(
      name: "Job 4",
      description: "LGBTQ/Special need friendly job offer!\nNext Job interview available in 5 hours, 3km away from your location",
    ),
    Tile(
      name: "Job 5",
      description: "LGBTQ/Special need friendly job offer!\nNext Job interview available in 5 hours, 3km away from your location",
    ),
    Tile(
      name: "Job 6",
      description: "LGBTQ/Special need friendly job offer!\nNext Job interview available in 5 hours, 3km away from your location",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff9197),
        title: Text("Job Search"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Search for a job!",
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
