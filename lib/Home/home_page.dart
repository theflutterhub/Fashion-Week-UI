import 'dart:ffi';

import 'package:fashion_week_app/product_overview/product_overview_page.dart';
import 'package:fashion_week_app/widgets/single_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          Icon(Icons.search),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            title: Text(
              "Fashion Week",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color(0xffb376f3)),
            ),
            subtitle: Text("2021 Fashion show in paris"),
          ),
          ListTile(
            title: Text(
              "Explore",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color(0xffb376f3)),
            ),
            trailing: Icon(Icons.sort),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Recommended",
                style: TextStyle(
                  color: Color(0xffbf8bf3),
                ),
              ),
              Text("New Models"),
              Text("2020 Show"),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SingleItem(
                  title: "Niketa William",
                  image: "image1.jpg",
                  onTap: () {},
                  subTitle: "Paris",
                ),
                SingleItem(
                  title: "Trisha Louis",
                  image: "image2.jpg",
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverView(
                          image: "assets/image2.jpg",
                          title: "Trisha Louis",
                        ),
                      ),
                    );
                  },
                  subTitle: "Landon",
                ),
                SingleItem(
                  title: "Niketa William",
                  image: "image1.jpg",
                  onTap: () {},
                  subTitle: "Paris",
                ),
                SingleItem(
                  title: "Trisha Louis",
                  image: "image2.jpg",
                  onTap: () {},
                  subTitle: "Landon",
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 5,
                  spreadRadius: 0,
                ),
              ],
              color: Colors.red,
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("assets/image5.jpg")),
            ),
          ),
        ],
      ),
    );
  }
}
//////////// Hey Friends Home Page Complete I Am Starting Next Page Like ProductOverView Page