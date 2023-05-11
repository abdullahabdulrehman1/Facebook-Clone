// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData? icon;
  final double? itemsize;
  final Function()? onPresed;
  const CircleButton({
    Key? key,
    required this.icon,
    required this.itemsize,
   required this.onPresed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(6.0),
        decoration:
            BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
        child: IconButton(
          icon: Icon(icon),
          iconSize: itemsize,
          color: Colors.black,
          onPressed: onPresed,
        ));
  }
}
