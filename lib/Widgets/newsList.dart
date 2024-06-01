import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../models/article.dart';
import '../Widgets/news_tile.dart';
import '../services/news_services.dart';


class NewsTileList extends StatelessWidget {
  final List<ArticleModel> articles;

  NewsTileList({super.key,required this.articles});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount:articles.length,
                (context,index)
            {
              return NewsTile(articleModel: articles[index],);
            }
            )
    );
    // return ListView.builder(
    //     physics: const BouncingScrollPhysics(),
    //     itemCount: News.length,
    //   itemBuilder:(context,num)
    //     {
    //        return NewsTile(articleModel: News[num],);
    //     }
    // );
  }

}