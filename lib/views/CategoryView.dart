import 'package:flutter/material.dart';

import '../Widgets/Category_Card.dart';
import '../Widgets/NewsListViewBuilder.dart';
import '../models/category_model.dart';

class CategoryView extends StatelessWidget
{
  CategoryView({super.key,required this.category,required this.color});

  final String category;
  final Color color;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text(category, style: TextStyle(color: Colors.white),),
      ),
      body: CustomScrollView(slivers: [NewsTileListBuilder(Category: category,),]
      )
    );
  }

}