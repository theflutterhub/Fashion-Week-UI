import 'dart:ui';

import 'package:fashion_week_app/widgets/like_comment.dart';
import 'package:flutter/material.dart';

class ProductOverView extends StatelessWidget {
  final String image;
  final String title;
  ProductOverView({this.title, this.image});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        )),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white70,
                      ),
                      trailing: Icon(
                        Icons.more_vert,
                        color: Colors.white70,
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LikeComment(
                            icon: Icons.comment_outlined,
                            title: "1",
                          ),
                          LikeComment(
                            icon: Icons.favorite_border_outlined,
                            title: "579",
                          ),
                          LikeComment(
                            icon: Icons.watch_later_outlined,
                            title: "18",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20, left: 12, right: 12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.1)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Lorem ipsum is a pleaseholder text commonly userd to demontrate the visual form of a docment or a typeface without relying on ",
                                  style: TextStyle(
                                    color: Colors.white54,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Color(0xffc20f2c),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "Follow",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Icon(
                                            Icons.add_circle,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//// Hey Friends Please Subscribe My Channel And Like Comment also Thanks For Watching 