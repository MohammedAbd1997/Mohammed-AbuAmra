import 'package:facebook_ui/Model/UserModel.dart';

class PostModel {

  final UserModel userModel;
  final String title;
  final String time;
  final String imagePost;
  final int like;
  final int comment;
  final int share;

  PostModel(
      {required this.userModel,
      required this.title,
      required this.time,
      required this.imagePost,
      required this.like,
      required this.comment,
      required this.share});
}
