import 'package:flutter/material.dart';

import '../colors.dart';
import '../global.dart';

class PopularCourseWidget extends StatefulWidget {
  final Axis direction;
  final double hight;
  const PopularCourseWidget({super.key, required this.direction, required this.hight});

  @override
  State<PopularCourseWidget> createState() => _PopularCourseWidgetState();
}

class _PopularCourseWidgetState extends State<PopularCourseWidget> {

  final List? courses = [
    {
      "image": "assets/images/meets.jpg",
      "title": "Design Thinking Fundamentals",
      "author": "Robert Green",
      "rating": "4.8",
      "reviews": "1.5k reviews",
      "price": "180.00",
      "isBestSeller": true,
    },
    {
      "image": "assets/images/meets.jpg",
      "title": "Design Thinking Fundamentals",
      "author": "Robert Green",
      "rating": "4.8",
      "reviews": "1.5k reviews",
      "price": "250.00",
      "isBestSeller": false,
    },
    {
      "image": "assets/images/meets.jpg",
      "title": "Design Thinking Fundamentals",
      "author": "Robert Green",
      "rating": "4.8",
      "reviews": "1.5k reviews",
      "price": "180.00",
      "isBestSeller": true,
    },
    {
      "image": "assets/images/meets.jpg",
      "title": "Design Thinking Fundamentals",
      "author": "Robert Green",
      "rating": "4.8",
      "reviews": "1.5k reviews",
      "price": "180.00",
      "isBestSeller": true,
    },
    {
      "image": "assets/images/meets.jpg",
      "title": "Design Thinking Fundamentals",
      "author": "Robert Green",
      "rating": "4.8",
      "reviews": "1.5k reviews",
      "price": "180.00",
      "isBestSeller": true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      child: SizedBox(
        height: widget.hight,
        child: ListView.builder(
          scrollDirection: widget.direction,
          // padding: EdgeInsets.all(16.0),
          itemCount: courses?.length,
          itemBuilder: (context, index) {
            final course = courses![index];

            return Container(
              width: MediaQuery.of(context).size.width * 0.8,
              margin: EdgeInsets.only(left: size.mediumPadding,
                  right:size.mediumPadding  ,bottom: 5,top: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                              bottomRight:  Radius.circular(12),
                              bottomLeft:  Radius.circular(12)
                          ),
                          child: Image.asset(
                            course["image"],
                            height: 180,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                        Positioned(
                          top: 18,
                          left: 18,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: Colors.white,
                            ),
                            child: Text(
                              "Best Seller",
                              style: TextStyle(
                                color: newprimaryColor,
                                fontSize: size.descFontSize,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      Positioned(
                        top: 18,
                        right: 18,
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.bookmark_border,size: 20,
                              color: red,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          course["title"],
                          style: TextStyle(
                            fontSize: size.subtitleFontsize,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: gray,
                              radius: 10,
                              child: Icon(
                                Icons.person,
                                size: 20.0,
                                color: darkgray,
                              ),
                            ),
                            SizedBox(width: 4),
                            Text(
                              course["author"],
                              style: TextStyle(
                                fontSize: size.contentFontSize,
                                color: darkgray,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 19,
                                  color: Colors.orange,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  course["rating"],
                                  style: TextStyle(
                                    fontSize: size.subtitleFontsize,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  course["reviews"],
                                  style: TextStyle(
                                    fontSize: size.subtitleFontsize,
                                    color: darkgray,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              course["price"],
                              style: TextStyle(
                                fontSize: size.subtitleFontsize,
                                fontWeight: FontWeight.bold,
                                color: gold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );

          },
        ),
      ),
    );
  }
}

