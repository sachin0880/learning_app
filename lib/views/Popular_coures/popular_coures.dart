import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/constants/global.dart';

class PopularCoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List? courses = [
      {
        "image": "assets/images/best_seller.png",
        "title": "Design Thinking Fundamentals",
        "author": "Robert Green",
        "rating": "4.8",
        "reviews": "1.5k reviews",
        "price": "180.00",
        "isBestSeller": true,
      },
      {
        "image": "assets/images/best_seller.png",
        "title": "Design Thinking Fundamentals",
        "author": "Robert Green",
        "rating": "4.8",
        "reviews": "1.5k reviews",
        "price": "250.00",
        "isBestSeller": false,
      },
      {
        "image": "assets/images/best_seller.png",
        "title": "Design Thinking Fundamentals",
        "author": "Robert Green",
        "rating": "4.8",
        "reviews": "1.5k reviews",
        "price": "180.00",
        "isBestSeller": true,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Popular Courses"),
        leading: const Icon(Icons.arrow_back),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: courses?.length,
        itemBuilder: (context, index) {
          final course = courses?[index];
          return CourseCard(
            image: course["image"]!,
            title: course["title"]!,
            author: course["author"]!,
            rating: course["rating"]!,
            reviews: course["reviews"]!,
            price: course["price"]!,
            isBestSeller: course["isBestSeller"] as bool,
          );
        },
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String image;
  final String title;
  final String author;
  final String rating;
  final String reviews;
  final String price;
  final bool isBestSeller;

  const CourseCard({
    required this.image,
    required this.title,
    required this.author,
    required this.rating,
    required this.reviews,
    required this.price,
    required this.isBestSeller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
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
                  ),
                  child: Image.asset(
                    image,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Positioned(
                top: 8,
                right: 8,
                child: IconButton(
                  onPressed: () {},
                  icon:  Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding:  EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 SizedBox(height: 4),
                Row(
                  children: [
                     CircleAvatar(
                       backgroundColor: Colors.transparent ,
                       child: Icon(
                        Icons.person,
                        size: 28.0,
                        color:darkgray,
                                           ),
                     ),
                     SizedBox(width: 4),
                    Text(
                      author,
                      style: TextStyle(
                        fontSize:size.subtitleFontsize,
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
                        SizedBox(width: 10,),
                        Icon(
                          Icons.star, size: 19, color: Colors.orange,),
                        SizedBox(width: 4),
                        Text(
                          "$rating ($reviews)",
                          style:  TextStyle( fontSize:size.subtitleFontsize, color: darkgray,),
                        ),
                      ],
                    ),

                    Text("\$$price",
                      style:  TextStyle(fontSize:size.subtitleFontsize,
                        fontWeight: FontWeight.bold, color: gold,),
                    ),


                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
