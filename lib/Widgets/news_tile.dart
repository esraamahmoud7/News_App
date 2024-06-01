import 'package:flutter/material.dart';
import 'package:news/Widgets/webViewWidg.dart';
import '../models/article.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebView(articleModel: articleModel),
          ),
        );
      },
      child: Column(
        children: [
          ClipRRect
            (
            borderRadius: BorderRadius.circular(6),
              child: Image.network(
                articleModel.image ?? "https://cdn4.iconfinder.com/data/icons/picture-sharing-sites/32/No_Image-1024.png",
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,),

            ),
          Text(
                articleModel.title,
                style: TextStyle(
                color: Colors.black87,
                overflow: TextOverflow.ellipsis ,
                fontSize: 20,
                fontWeight: FontWeight.w500,)
            ,
          ),
          Text(
            articleModel.subTitle??"Sorry !! no sub title.",
            style: TextStyle(
              color: Colors.blueGrey,
              overflow: TextOverflow.ellipsis ,
              fontSize: 20,
              fontWeight: FontWeight.w500,)
            ,
          ),

          SizedBox(height: 16,)
        ],
      ),
    );
  }
}
