import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';

import 'Listitem_class.dart';

class ItemTabbarList extends StatefulWidget {
  const ItemTabbarList({super.key});

  @override
  State<ItemTabbarList> createState() => _ItemTabbarListState();
}

class _ItemTabbarListState extends State<ItemTabbarList> {

  List<ListtileClass> listclassitem=[
    ListtileClass("assets/images/notify3.png", "John Doe", "Design Expert"),
    ListtileClass("assets/images/notify3.png", "John Doe", "Design Expert"),
    ListtileClass("assets/images/notify3.png", "John Doe", "Design Expert"),
    ListtileClass("assets/images/notify3.png", "John Doe", "Design Expert")
  ];

  @override
  Widget build(BuildContext context) {
    return Container( height: 700,
      child: ListView.builder(
          itemCount: listclassitem.length
          ,itemBuilder: (BuildContext context, index){
        return ListTile(
          leading: Container(
              decoration: BoxDecoration(shape: BoxShape.circle)
              ,child: Image(image: AssetImage(listclassitem[index].img1),)),
              title: Text(listclassitem[index].tilte),
          subtitle: Text(listclassitem[index].subtitle),
          trailing:   Container(width: 100,
              //color: Colors.red,
            child: Row(
              children: [
                SizedBox(width: 10,),
               Container(
                 padding: EdgeInsets.all(8),
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,color: white,

                 ),
                 child: Icon(Icons.phone,color: gold,),
               ),
                SizedBox(width: 10,),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,color: white
                  ),
                  child: Icon(Icons.message,color: gold,),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
