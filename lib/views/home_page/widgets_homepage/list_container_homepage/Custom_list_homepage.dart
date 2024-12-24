
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoursesTab extends StatelessWidget {

  List<CourseCard> cardlist=[
    CourseCard(title:'Introduction to Figma' ,
        author: 'Robert Green',
        rating: 4.8,
        reviews: '1.5k reviews',
        price: '\$250.00',
        imageUrl: 'assets/images/best_seller.png',
        img2: 'assets/images/user.png'),
    CourseCard(title:'Introduction to Figma' ,
        author: 'Robert Green',
        rating: 4.8,
        reviews: '1.5k reviews',
        price: '\$250.00',
        imageUrl: 'assets/images/best_seller.png',
        img2: 'assets/images/user.png'),
    CourseCard(title:'Introduction to Figma' ,
        author: 'Robert Green',
        rating: 4.8,
        reviews: '1.5k reviews',
        price: '\$250.00',
        imageUrl: 'assets/images/best_seller.png',
        img2: 'assets/images/user.png'),
    CourseCard(title:'Introduction to Figma' ,
        author: 'Robert Green',
        rating: 4.8,
        reviews: '1.5k reviews',
        price: '\$250.00',
        imageUrl: 'assets/images/best_seller.png',
        img2: 'assets/images/user.png')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,physics: NeverScrollableScrollPhysics(),
        itemCount: cardlist.length
        ,itemBuilder: (BuildContext context , index){
         return   Card(
           color: Colors.white,
           elevation: 5,
           margin: const EdgeInsets.symmetric(vertical: 8),
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 10,top: 13),
                 child: ClipRRect(
                   borderRadius: BorderRadius.circular(10),
                   child: Image.asset(cardlist[index].imageUrl, width: 100, height: 100, fit: BoxFit.cover),
                 ),
               ),
               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [

                       const SizedBox(height: 5),
                       Text(cardlist[index].title, style: const TextStyle( fontSize:15, fontWeight: FontWeight.bold)),
                       const SizedBox(height: 5),
                       Row(
                         children: [
                           CircleAvatar(radius: 15 ,
                             child: Image(image: AssetImage(cardlist[index].img2),height: 15,),
                           ),
                           SizedBox(width: 10,),
                           Text(cardlist[index].author, style: const TextStyle(color: Colors.grey)),
                         ],
                       ),
                       const SizedBox(height: 10),
                       Row(
                         children: [
                           Icon(Icons.star, color: Colors.yellow, size: 16),
                           Text("${cardlist[index].rating.toString()} ${cardlist[index].reviews.toString()}", style: const TextStyle(fontSize: 12)),
                         ],
                       ),
                       const SizedBox(height: 10),
                       Text(cardlist[index].price, style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                     ],
                   ),
                 ),
               ),
             ],
           ),
         );
    });
  }
}



class CourseCard  {
  final String title;
  final String author;
  final double rating;
  final String reviews;
  final String price;
  final String imageUrl;
  final String img2;
  final bool bestSeller;

  CourseCard({
    required this.title,
    required this.author,
    required this.rating,
    required this.reviews,
    required this.price,
    required this.imageUrl,
    this.bestSeller = false, required this.img2,
  });

  // @override
  // Widget build(BuildContext context) {
  //   return Card(
  //     margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  //     child: Row(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Padding(
  //           padding: const EdgeInsets.only(left: 10,top: 13),
  //           child: ClipRRect(
  //             borderRadius: BorderRadius.circular(10),
  //             child: Image.network(imageUrl, width: 100, height: 100, fit: BoxFit.cover),
  //           ),
  //         ),
  //         Expanded(
  //           child: Padding(
  //             padding: const EdgeInsets.all(10.0),
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //
  //                 const SizedBox(height: 5),
  //                 Text(title, style: const TextStyle( fontSize:15, fontWeight: FontWeight.bold)),
  //                 const SizedBox(height: 5),
  //                 Row(
  //                   children: [
  //                     CircleAvatar(radius: 15 ,
  //                       child: Image(image: AssetImage(img2),height: 15,),
  //                     ),
  //                     SizedBox(width: 10,),
  //                     Text(author, style: const TextStyle(color: Colors.grey)),
  //                   ],
  //                 ),
  //                 const SizedBox(height: 10),
  //                 Row(
  //                   children: [
  //                     Icon(Icons.star, color: Colors.yellow, size: 16),
  //                     Text('$rating ($reviews)', style: const TextStyle(fontSize: 12)),
  //                   ],
  //                 ),
  //                 const SizedBox(height: 10),
  //                 Text(price, style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
  //               ],
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}