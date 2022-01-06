import 'package:facebook_ui/Data/dummyData.dart';
import 'package:facebook_ui/ui/Post.dart';
import 'package:facebook_ui/ui/Stories.dart';
import 'package:flutter/material.dart';

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
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: false,
          title: Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 6.0),
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt_sharp),
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.grey[300],
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 2),
                      hintText: 'Search',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey[600],
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 6),
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: Container(
                  height: 30,
                  width: 30,
                  child: Image.asset(
                    'assets/icons/messenger.png',
                  ),
                ),
              )
            ],
          ),
        ),
        body: Container(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal:10,vertical: 10 ),
                color: Colors.white,
                child: Row(
                  children: [
                    Text(
                      'Stories',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text('See Archive >',style: TextStyle(fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
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
