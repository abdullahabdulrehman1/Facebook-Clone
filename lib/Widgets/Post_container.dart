import 'package:facebook/palette.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../models/models.dart';

class PostContainer extends StatelessWidget {
  final Post posts;
  const PostContainer({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.symmetric(
        vertical: 5.0,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        // horizontal: 12.0
      ),
      // height: 600,

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _Postheader(posts: posts),
            SizedBox(
              height: 8.0,
            ),
            // ignore: unnecessary_null_comparison
            Text(posts.caption),
            posts.imageurl != null
                ? SizedBox.shrink()
                : SizedBox(
                    height: 6.0,
                  ),
            posts.imageurl != null
                ? Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    // child: Container(
                    // decoration: BoxDecoration(borderRadius: BorderRadius.all(2)),
                    child: CachedNetworkImage(
                      imageUrl: posts.imageurl,
                    ),
                    // ),
                  )
                : SizedBox.shrink(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: _Poststats(post: posts),
            ),
          ],
        ),
      ),
    );
  }
}

///_POSTHEADER ___
///
class _Postheader extends StatelessWidget {
  final Post posts;
  const _Postheader({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvatar(imageUrl: posts.user.imageUrl),
        SizedBox(width: 8.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                posts.user.name,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Text(
                    '1 hour Ago',
                    style: TextStyle(color: Colors.grey[600], fontSize: 12.0),
                  ),
                  SizedBox(
                    width: 2.0,
                  ),
                  Icon(
                    Icons.public,
                    color: Colors.grey[600],
                    size: 12,
                  )
                ],
              )
            ],
          ),
        ),
        IconButton(onPressed: () => print("MORE"), icon: Icon(Icons.more_horiz))
      ],
    );
  }
}

class _Poststats extends StatelessWidget {
  final Post post;
  const _Poststats({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // MainAxisAlignment:MainAxisAlignment
            Container(
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                  color: Palette.facebookblue, shape: BoxShape.circle),
              child: Icon(
                Icons.thumb_up,
                size: 10.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 4.0,
            ),
            Expanded(
              child: Text(
                '${post.likes} Likes',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            Text(
              '${post.comments} Comments',
              style: TextStyle(color: Colors.grey[600]),
            ),
            SizedBox(
              width: 8.0,
            ),
            Text(
              '${post.shares} Shares',
              style: TextStyle(color: Colors.grey[600]),
            )
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _Postbutton(
              icon: Icon(
                MdiIcons.thumbUpOutline,
                color: Colors.grey[600],
                size: 20.0,
              ),
              label: 'Like',
              onTap: () => print('Like'),
            ),
            // Divider()
            //  VerticalDivider(),
            _Postbutton(
              icon: Icon(
                MdiIcons.commentOutline,
                color: Colors.grey[600],
                size: 20.0,
              ),
              label: 'Comment',
              onTap: () => print('Comment'),
            ),
            _Postbutton(
              icon: Icon(
                MdiIcons.shareOutline,
                color: Colors.grey[600],
                size: 20.0,
              ),
              label: 'Share',
              onTap: () => print('Share'),
            )
          ],
        ),
      ],
    );
  }
}

class _Postbutton extends StatelessWidget {
  final Icon icon;
  final String label;
  final Function onTap;
  const _Postbutton(
      {super.key,
      required this.icon,
      required this.label,
      required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.white,
        child: InkWell(
            onTap: onTap(),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 9.0),
              height: 25.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon,
                  SizedBox(
                    width: 4.0,
                  ),
                  Text(label)
                ],
              ),
            )),
      ),
    );
  }
}
