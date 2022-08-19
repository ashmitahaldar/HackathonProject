import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';

class Community extends StatefulWidget {
  Community({Key? key, required this.title}) : super(key: key);

  final String title;

  @override 
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
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

        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              SizedBox(height: 20),
              

              // Top Explore scrollbar **need to add bg images for scrollbar items
              const Text(" Explore Communities", 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),

              SizedBox(height: 20),

              Container(
                height: 100,
                child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 200,
                    color: Colors.purple[600],
                    child: const Center(child: Text('LGBTQ Marriage', style: TextStyle(fontSize: 18, color: Colors.white),)),
                  ),
                  Container(
                    width: 200,
                    color: Colors.purple[500],
                    child: const Center(child: Text('Adoption', style: TextStyle(fontSize: 18, color: Colors.white),)),
                  ),
                  Container(
                    width: 200,
                    color: Colors.purple[400],
                    child: const Center(child: Text('Latest Job Listings', style: TextStyle(fontSize: 18, color: Colors.white),)),
                  ),
                  Container(
                    width: 200,
                    color: Colors.purple[300],
                    child: const Center(child: Text('What\'s New', style: TextStyle(fontSize: 18, color: Colors.white),)),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),


              

          // Bottom Feed
            SizedBox(height: 30),

            const Text(" Feed", 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),

          ],
          )
        ),
      ),
    );
  }
}