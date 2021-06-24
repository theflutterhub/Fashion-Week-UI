import 'package:flutter/material.dart';

class SingleItem extends StatelessWidget {
  final Function onTap;
  final String title;
  final String subTitle;
  final String image;
  SingleItem({this.image, this.onTap, this.subTitle, this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              height: 220,
              width: 160,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black, blurRadius: 5, spreadRadius: 0),
                  ],
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/$image"),
                  ),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$title",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                SizedBox(
                  height: 6,
                ),
                Text("$subTitle")
              ],
            ),
          )
        ],
      ),
    );
  }
}
