import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../models/article.dart';
import '../services/news_services.dart';
import 'newsList.dart';

class NewsTileListBuilder extends StatefulWidget {
  NewsTileListBuilder({super.key,required this.Category});

  final String Category;

  @override
  State<NewsTileListBuilder> createState() => _NewsTileListBuilderState();
}

class _NewsTileListBuilderState extends State<NewsTileListBuilder> {

  var future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future=NewsService(Dio()).getNews(
      category: widget.Category
    );
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context,snapshot)
      {
        if(snapshot.hasData)
          {
            return NewsTileList(articles: snapshot.data!);

          }
        else if(snapshot.hasError)
          {
            return SliverToBoxAdapter(child: Text(" Sorry !! SomeThing is wrong , Please try again :))"),);
          }
        else
        {
          return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator(),),);
        }
      }
    );
  }
}