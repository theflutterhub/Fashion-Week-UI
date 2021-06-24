import 'package:flutter/material.dart';

class LikeComment extends StatelessWidget {
  final IconData icon;
  final String title;
  LikeComment({this.title,this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          Icon(icon,color: Colors.white70,),
          Text(title,style: TextStyle(color: Colors.white70),)
        ],
      ),
    );
  }
}
