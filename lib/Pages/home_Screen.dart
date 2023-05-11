import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../Widgets/circlebuttondart.dart';
import '../models/models.dart';
import '../palette.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              "facebook",
              style: TextStyle(
                color: Palette.facebookblue,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButton(
                icon: Icons.search,
                itemsize: 30.0,
                onPresed: () => print('SEARCH'),
              ),
              CircleButton(
                icon: MdiIcons.facebookMessenger,
                itemsize: 30.0,
                onPresed: () => print('Facebook Mess'),
              )
            ],
          ),
          SliverToBoxAdapter(
              child: CreatePostContainer(
            currentUser: currentuser,
          )),
          SliverPadding(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
              sliver: SliverToBoxAdapter(
                child: Stories(currentuser: currentuser, stories: story),
              )),
          SliverList(
              delegate: SliverChildBuilderDelegate(childCount: post.length, (
            context,
            index,
          ) {
            final Post posts = post[index];
            return PostContainer(posts: posts);
          }))
        ],
      ),
    );
  }
}
