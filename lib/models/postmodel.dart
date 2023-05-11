
import 'models.dart';

class Post {
  final User user;
  final String caption;
  final String timeage;
  final String imageurl;
  final int likes;
  final int comments;
  final int shares;
  const Post(
      {required this.caption,
      required this.comments,
      required this.imageurl,
      required this.likes,
      required this.shares,
      required this.timeage,
      required this.user});
}
