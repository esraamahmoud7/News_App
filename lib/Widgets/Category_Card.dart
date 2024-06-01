import 'package:flutter/material.dart';
import 'package:news/views/CategoryView.dart';

import '../models/category_model.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({super.key,required this.item});
  final CategoryModel item;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.of(context).push(MaterialPageRoute(builder: (context){return CategoryView(category: item.categoryName,color: item.color,);}));
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.fill,image: AssetImage(item.image),),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Center(child: Text(item.categoryName,style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 18 ),)),

        ),
      ),
    );

  }
}
