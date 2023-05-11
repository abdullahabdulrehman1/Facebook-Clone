
import 'package:facebook/models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/usermodel.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;
  const CreatePostContainer({super.key, required this.currentUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      color: Colors.white,
      child: Column(children: [
        Row(
          children: [
            ProfileAvatar(
              imageUrl: currentUser.imageUrl,
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
                child: TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                hintText: 'What is in your mind?',
              ),
            )),
          ],
        ),
        const Divider(
          height: 10.0,
          thickness: 0.5,
        ),
        Container(
          height: 40.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(
                  onPressed: () => print('live'),
                  icon: Icon(Icons.videocam, color: Colors.red),
                  label: Text('Live')),
              VerticalDivider(
                width: 8.0,
                // thickness: 0.5,
              ),
              TextButton.icon(
                  onPressed: () => print('Photos_library'),
                  icon: Icon(Icons.photo_library, color: Colors.green),
                  label: Text('Photo')),
              VerticalDivider(
                width: 8.0,
                // thickness: 0.5,
              ),
              TextButton.icon(
                  onPressed: () => print('Video_call'),
                  icon: Icon(Icons.video_call, color: Colors.purple),
                  label: Text('Room')),
            ],
          ),
        )
      ]),
    );
  }
}
