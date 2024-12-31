// import 'package:flutter/material.dart';
// import 'package:learning_app/utils/constants/colors.dart';
// import 'package:learning_app/utils/constants/global.dart';
//
//
// class ItemTabbarList extends StatefulWidget {
//   final List items;
//   const ItemTabbarList({super.key, required this.items});
//
//   @override
//   State<ItemTabbarList> createState() => _ItemTabbarListState();
// }
//
// class _ItemTabbarListState extends State<ItemTabbarList> {
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container( height: 700,
//       child: ListView.builder(
//           itemCount: widget.items.length
//           ,itemBuilder: (BuildContext context, index){
//             var items = widget.items[index];
//         return ListTile(
//           leading: Container( height: 50,
//               decoration: BoxDecoration(shape: BoxShape.circle)
//               ,child: Image(image: AssetImage(items.img1),)),
//               title: Text(items.tilte,style: TextStyle(fontSize:size.subtitleFontsize ,fontWeight: FontWeight.w500 ),),
//           subtitle: Text(items.subtitle ,style: TextStyle(fontSize:size.contentFontSize, color: darkgray ),),
//           trailing:   Container(width: 100,
//               //color: Colors.red,
//             child: Row(
//               children: [
//                 SizedBox(width: 10,),
//                Container(
//                  padding: EdgeInsets.all(8),
//                  decoration: BoxDecoration(
//                    shape: BoxShape.circle,color: gray,
//
//                  ),
//                  child: Icon(Icons.phone,color: gold,),
//                ),
//                 SizedBox(width: 10,),
//                 Container(
//                   padding: EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle,color: gray
//                   ),
//                   child: Icon(Icons.message,color: gold,),
//                 ),
//               ],
//             ),
//           ),
//         );
//       }),
//     );
//   }
// }
//
//
//
