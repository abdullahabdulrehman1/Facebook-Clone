import 'package:flutter/material.dart';
import '../models/models.dart';

import '../palette.dart';

class Stories extends StatelessWidget {
  final User currentuser;
  final List<Story> stories;
  const Stories({super.key, required this.currentuser, required this.stories});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: Colors.white,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + stories.length,
        itemBuilder: (BuildContext context, index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4.0,
              ),
              child: _Storycard(isaddstory: true, currentUser: currentuser),
            );
          }
          final Story story = stories[index - 1];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0),
            child: _Storycard(story: story),
          );
        },
      ),
    );
  }
}

class _Storycard extends StatelessWidget {
  final bool isaddstory;
  final User? currentUser;
  final Story? story;

  const _Storycard({
    Key? key,
    this.isaddstory = false,
    this.currentUser,
    this.story,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
            // borderR
            borderRadius: BorderRadius.circular(12.0),
            child: CachedNetworkImage(
              imageUrl: isaddstory ? currentUser!.imageUrl : story!.imageurl,
              height: double.infinity,
              width: 110,
              fit: BoxFit.cover,
            )),
        Container(
          height: double.infinity,
          width: 110.0,
          decoration: BoxDecoration(
              gradient: Palette.storyGradient,
              borderRadius: BorderRadius.circular(12.0)),

          // decoration: BoxDecoration,
        ),
        Positioned(
          top: 5.0,
          left: 5.0,
          child: isaddstory
              ? Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                      onPressed: () => null,
                      icon: Icon(
                        Icons.add,
                        color: Colors.blue,
                      )),
                )
              : ProfileAvatar(
                  imageUrl: story!.user.imageUrl,
                  hasborder: !story!.isViewed,
                ),
        ),
        Positioned(
            bottom: 5.0,
            left: 5.0,
            right: 5.0,
            child: Text(
              isaddstory ? 'Add to Story' : story!.user.name,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )),
      ],
    );
  }
}
// Positioned(top: 8,left: 8.0,child: isaddstory ?
//          Container(height: 40.0,width: 40.0,
//         decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle,),
//         child: IconButton(padding: EdgeInsets.zero,
//         icon: const Icon(Icons.add),)
//         ,): null)