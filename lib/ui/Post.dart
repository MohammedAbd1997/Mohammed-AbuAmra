import 'package:facebook_ui/Model/PostModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  PostModel postModel;
  BuildContext context;

  static const IconData thumb_up_outlined =
      IconData(0xf440, fontFamily: 'MaterialIcons');

  static const IconData comment_outlined =
      IconData(0xef6e, fontFamily: 'MaterialIcons');

  static const IconData share_outlined =
  IconData(0xf378, fontFamily: 'MaterialIcons');

  PostWidget(this.postModel, this.context);

  void toast() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Sending Message"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 12, left: 12),
              height: 32,
              width: 32,
              child: CircleAvatar(
                backgroundImage: NetworkImage(postModel.userModel.image),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              margin: EdgeInsets.only(top: 4),
              child: Text(
                postModel.userModel.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              postModel.title,
              style: TextStyle(fontSize: 15, color: Colors.grey[500]),
            ),
            Spacer(),
            IconButton(onPressed: toast, icon: Icon(Icons.more_horiz))
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 53),
          child: Row(
            children: [
              Text(
                '${postModel.time} PM .',
                style: TextStyle(fontSize: 12),
              ),
              Icon(
                Icons.public,
                color: Colors.grey[600],
                size: 15,
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(postModel.imagePost)),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, left: 20, right: 15),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(4.0),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Icon(
                  Icons.thumb_up,
                  size: 10,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 4.0,
              ),
              Text(
                postModel.like.toString(),
                style: TextStyle(color: Colors.grey[600]),
              ),
              Spacer(),
              Text(
                '${postModel.comment.toString()} Comments',
                style: TextStyle(color: Colors.grey[600], fontSize: 13.5),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                '${postModel.share.toString()} Share',
                style: TextStyle(color: Colors.grey[600], fontSize: 13.5),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only( top: 20,bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(
                    thumb_up_outlined,
                    color: Colors.grey[600],
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text('Like')
                ],
              ),
              Row(
                children: [
                  Icon(
                    comment_outlined,
                    color: Colors.grey[600],
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text('Comment')
                ],
              ),
              Row(
                children: [
                  Icon(
                    share_outlined,
                    color: Colors.grey[600],
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text('Share')
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
