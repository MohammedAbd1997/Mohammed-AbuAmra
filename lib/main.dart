import 'package:facebook_ui/Data/dummyData.dart';
import 'package:facebook_ui/ui/Post.dart';
import 'package:facebook_ui/ui/Stories.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: MainFacebook(),
    debugShowCheckedModeBanner: false,
  ));
}

class MainFacebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          actions: [
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                  color: Colors.grey[200], shape: BoxShape.circle),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                color: Colors.black,
              ),
            ), Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                  color: Colors.grey[200], shape: BoxShape.circle),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.messenger),
                iconSize: 30,
                color: Colors.black,
              ),
            )
          ],
          backgroundColor: Colors.white,
          centerTitle: false,
          title: Text(
            "facebook",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 28,
                letterSpacing: -1.2,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(bottom: 10),
                margin: EdgeInsets.only(bottom: 15, top: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Row(
                      children: storymodeldata.map((e) {
                        return StoriesWidget(e);
                      }).toList(),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                    children: postmodeldata.map((e) {
                  return PostWidget(e, context);
                }).toList()),
              )
            ],
          ),
        )));
  }
}
