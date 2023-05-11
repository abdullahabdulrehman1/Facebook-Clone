import 'models.dart';

class Story {
  final User user;
  final String imageurl;
  final bool isViewed;
  const Story(
      {required this.imageurl, this.isViewed = false, required this.user});
}
