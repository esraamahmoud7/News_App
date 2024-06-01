import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'Category_Card.dart';

class CategoryList extends StatelessWidget {
   CategoryList({super.key});
   List<CategoryModel> images=[
     CategoryModel(image: 'assets/beauty2.jpg', categoryName: 'Beauty',color:Color(0xff334b56)),
     CategoryModel(image: 'assets/business.avif', categoryName: 'Business',color:Color(0xff334b56)),
     CategoryModel(image: 'assets/entertaiment.avif', categoryName: 'Entertainment',color:Color(0xff334b56)),
     CategoryModel(image: 'assets/general.avif', categoryName: 'General',color:Color(0xff334b56)),
     CategoryModel(image: 'assets/health.avif', categoryName: 'Health',color:Color(0xff334b56)),
     CategoryModel(image: 'assets/science.avif', categoryName: 'Science',color:Color(0xff334b56)),
     CategoryModel(image: 'assets/sports.avif', categoryName: 'Sports',color:Color(0xff334b56)),
     CategoryModel(image: 'assets/technology.jpeg', categoryName: 'Technology',color:Color(0xff334b56)),

   ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context,num){
          return CategoryCard(item: images[num]);
        },
      ),
    );
  }
}
