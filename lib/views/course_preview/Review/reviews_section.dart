import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/constants/custome_widgets/button_widget.dart';

import '../../../utils/constants/global.dart';


class Review {
  final String userName;
  final String profileImage;
  final int rating;
  final String reviewText;
  final String timeAgo;

  Review({
    required this.userName,
    required this.profileImage,
    required this.rating,
    required this.reviewText,
    required this.timeAgo,
  });
}

class ReviewsPage extends StatefulWidget {
  @override
  State<ReviewsPage> createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {
  final List<Review> reviews = List.generate(
    10,
        (index) => Review(
      userName: "Anita Cruz",
      profileImage: "assets/images/manprofile.png",
      rating: 3,
      reviewText:
      "My wife & I have moved 6 times in the last 25 years. Obviously, we've dealt with many realtors both on the buying and selling side. I have to say that David is by far the BEST realtor we've ever worked with, his professionalism, personality...",
      timeAgo: "11 months ago",
    ),
  );

  List<String> categoriesList = ["Latest","Verified","Detailed Reviews" ,"5.0", "4.0", "3.0","2.0","1.0"];

  int listcolor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [

          SizedBox(child: Container(
            height: 80,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Row(
                    children: [
                      Text("Reviews",style: TextStyle(fontSize:size.contentFontSize,fontWeight: FontWeight.w500,
                      color: themeController.isDarkMode.value ? newprimaryColor : black),),
                      SizedBox(width: 5,),
                      Text("(45)",style: TextStyle(fontSize:size.contentFontSize,fontWeight: FontWeight.w500,
                          color: themeController.isDarkMode.value ? darkgray : black ),),
                    ],
                  ),
                ),
                ButtonWidget(btnlist: categoriesList , initialIndex: listcolor),
              ],
            ),
          ),),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 20),

              itemCount: reviews.length,
              itemBuilder: (context, index) {
                final review = reviews[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        width: 60, height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage(review.profileImage), fit: BoxFit.fill)
                        ),
                      ),

                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  review.userName,
                                  style: TextStyle(fontWeight: FontWeight.w500,
                                  color: themeController.isDarkMode.value ? newprimaryColor : black),
                                ),
                                Text(
                                  review.timeAgo,
                                  style: TextStyle(color: Colors.grey, fontSize:size.descFontSize),
                                ),
                              ],
                            ),
                            Row(
                              children: List.generate(
                                5,
                                    (starIndex) => Icon(
                                  Icons.star,
                                  color: starIndex < review.rating
                                      ? Colors.yellow
                                      : darkgray,
                                  size: 16,
                                ),
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              review.reviewText,
                              maxLines: 2,
                             // overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: themeController.isDarkMode.value ? darkgray : black),
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

        ],
      ),
    );
  }
}




