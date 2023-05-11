import '../models/models.dart';

final User currentuser = User(
    name: 'Abdullah',
    imageUrl:
        'https://images.pexels.com/photos/12996613/pexels-photo-12996613.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load');

final List<User> onilneusers = [
  User(
      name: 'Abdullah1',
      imageUrl:
          'https://images.pexels.com/photos/12996613/pexels-photo-12996613.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
  User(
      name: 'Abdullah2',
      imageUrl:
          'https://images.pexels.com/photos/12996613/pexels-photo-12996613.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
  User(
      name: 'Abdullah3',
      imageUrl:
          'https://images.pexels.com/photos/12996613/pexels-photo-12996613.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
];
final List<Story> story = [
  Story(
    // user: ,user
    user: onilneusers[1],
    imageurl:
        'https://images.pexels.com/photos/7438545/pexels-photo-7438545.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    isViewed: true,
  ),
  Story(
    // user: ,user
    user: onilneusers[2],
    imageurl:
        'https://images.pexels.com/photos/7438545/pexels-photo-7438545.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    isViewed: true,
  ),
  Story(
    // user: ,user
    user: onilneusers[2],
    imageurl:
        'https://images.pexels.com/photos/7438545/pexels-photo-7438545.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    isViewed: true,
  ),
  Story(
    // user: ,user
    user: onilneusers[2],
    imageurl:
        'https://images.pexels.com/photos/7438545/pexels-photo-7438545.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    isViewed: true,
  ),
];

 final List<Post> post = [
  Post(
      caption: "This is Pakistan",
      comments: 8,
      imageurl:
          "https://images.pexels.com/photos/1454405/pexels-photo-1454405.jpeg?auto=compress&cs=tinysrgb&w=1600",
      likes: 950,
      shares: 83,
      timeage: "4hr",
      user: onilneusers[1]),
 Post(
      caption: "Like follow and share",
      comments: 5,
      imageurl:
          "https://images.pexels.com/photos/15566159/pexels-photo-15566159.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load",
      likes: 45,
      shares: 83,
      timeage: "20hr",
      user: onilneusers[1]), Post(
      caption: "Trade online using your smartphone",
      comments: 5,
      imageurl:
          "https://images.pexels.com/photos/15115256/pexels-photo-15115256.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load",
      likes: 99,
      shares: 8773,
      timeage: "10hr",
      user: onilneusers[1]),
  Post(
      caption: "Leaves with strawberry! how beautiful is this",
      comments: 4,
      imageurl:
          "https://images.pexels.com/photos/15237016/pexels-photo-15237016.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load",
      likes: 453,
      shares: 8343,
      timeage: "4hr",
      user: onilneusers[2])
];
