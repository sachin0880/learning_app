import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/constants/global.dart';

class CategoryLists extends StatefulWidget {
  const CategoryLists({super.key});

  @override
  State<CategoryLists> createState() => _CategoryListsState();
}

class _CategoryListsState extends State<CategoryLists> {

  final List<CategoryItems> categoryitems = [
    CategoryItems("assets/images/brush.png", "Art"),
    CategoryItems("assets/images/brush.png", "Math"),
    CategoryItems("assets/images/brush.png", "Art"),
    CategoryItems("assets/images/brush.png", "Art"),
    CategoryItems("assets/images/brush.png", "Math"),
    CategoryItems("assets/images/brush.png", "Art"),
    CategoryItems("assets/images/brush.png", "Math"),
    CategoryItems("assets/images/brush.png", "Art"),
    CategoryItems("assets/images/brush.png", "Art"),
    CategoryItems("assets/images/brush.png", "Math"),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back),
      title: Text("Category",style: TextStyle(fontSize:size.titleFontsize , fontWeight: FontWeight.w500 ),),),

      body: Column(
        children: [
            Container(
              height: 700,
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                    itemCount: categoryitems.length,
                    itemBuilder: (BuildContext contex, index){
                  return  Container(
                    child: Column(
                      children: [

                        Container(
                          padding: EdgeInsets.all(14),
                          decoration: BoxDecoration(shape: BoxShape.circle,
                              color: gray) ,
                          child: Image(image: AssetImage(categoryitems[index].img),height: 50,),
                        ),
                        SizedBox(height: 10,),
                        Text(categoryitems[index].text)

                      ],
                    ),
                  );
                    })
            )
        ],
      ),
    );
  }
}

class CategoryItems{
  final String img;
  final String text;
  CategoryItems(this.img, this.text);
}