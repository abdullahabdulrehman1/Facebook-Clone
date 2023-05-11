import 'package:flutter/material.dart';
import '../models/models.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  final bool? hasborder;
  const ProfileAvatar(
      {super.key,
      required this.imageUrl,
      this.isActive = false,
      this.hasborder});

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundColor: isActive ? Colors.blueAccent : Colors.grey[200],
          backgroundImage: CachedNetworkImageProvider(imageUrl),

          // CachedNetworkImageProvidor(currentuser.imageUrl)
          // bck  "https://images.pexels.com/photos/15283442/pexels-photo-15283442.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
        ),
        // Container(),
        // isActive ? Positioned( bottom: 0.0,right: 0.0, ,child: Container(height: 15.0,width: 15.0,decoration: BoxDecoration(color: Palette.online,shape: BoxShape.circle
        // ,border: Border.all(width: 2.0,color: Colors.white),

        // ))): const SizedBox.shrink(),
      ],
    );
  }
}
