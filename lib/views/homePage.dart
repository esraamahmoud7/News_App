import 'package:flutter/material.dart';
import 'package:news/Widgets/Category_List.dart';

import '../Widgets/NewsListViewBuilder.dart';


class Home extends StatelessWidget {
   Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: RichText(
          text: TextSpan(children: [
            TextSpan(text: "News",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight:FontWeight.w600)),
            TextSpan(text: "Cloud",style: TextStyle(color: Colors.yellow,fontSize: 25,fontWeight:FontWeight.w600)),
          ]),
        )
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CategoryList()),
          const SliverToBoxAdapter(child: SizedBox(height: 20,)),
          NewsTileListBuilder(Category: 'general',),
        ],
      ),
      // body: Column(
      //   children: [
      //     CategoryList(),
      //     SizedBox(height: 20,),
      //     Expanded(child: Padding(
      //       padding: const EdgeInsets.all(16),
      //       child: NewsTileList(),
      //     )),
      //   ],
      // ),

      // body:


    );
  }
}



