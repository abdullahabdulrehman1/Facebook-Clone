import 'package:facebook/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/models.dart';
import '../models/usermodel.dart';

class Room extends StatelessWidget {
  final List<User> onlineUsers;
  const Room({super.key, required this.onlineUsers});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60.0,
        color: Colors.white,
        child: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
            scrollDirection: Axis.horizontal,
            itemCount: 1 + onlineUsers.length,
            itemBuilder: (BuildContext context, index) {
              if (index == 0) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: _CreateRoomButton(),
                );
              }
              final User user = onlineUsers[index - 1];
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: ProfileAvatar(
                  imageUrl: user.imageUrl,
                  isActive: true,
                ),
              );
            }));
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () => print("CREATE ROOM"),
        child: Row(
          children: [
            ShaderMask(
                shaderCallback: (rect) =>
                    Palette.createRoomGradient.createShader(rect),
                child: Icon(
                  Icons.video_call,
                  size: 35.0,
                )),
            SizedBox(
              width: 4.0,
            ),
            Text(
              "Create\nRoom",
              style: TextStyle(
                color: Palette.facebookblue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ));
  }
}
