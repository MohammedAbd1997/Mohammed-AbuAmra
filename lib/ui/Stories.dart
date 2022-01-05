import 'package:facebook_ui/Data/dummyData.dart';
import 'package:facebook_ui/Model/StoryModel.dart';
import 'package:flutter/material.dart';

class StoriesWidget extends StatelessWidget {
  StoryModel storyModel;

  StoriesWidget(this.storyModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  storyModel.imagestory,
                  height: 220,
                  width: 130,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10,left: 10),
                height: 36,
                width: 36,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(storyModel.userModel.image),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
