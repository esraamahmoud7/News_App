import 'package:dio/dio.dart';
import 'package:news/models/article.dart';

class NewsService
{
  final Dio dio;

  NewsService(this.dio);
  Future<List<ArticleModel>> getNews({required String category}) async
  {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=a2bca28e9194441fb508c81c2c648c4b&category=$category');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var artical in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(artical);

        articlesList.add(articleModel);
      }
      return articlesList;
    }
    catch(e)
    {
      return [];
    }
  }
}
