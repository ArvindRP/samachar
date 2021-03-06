import 'dart:convert';
import 'package:samachar/Modals/articlemodals.dart';
import 'package:http/http.dart' as http;

import '../Modals/articlemodals.dart';

class News{
  List<ArticleModels> news = [];

 Future<void> getNews()async {

   String url = 'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=8d9355d71cf0454e9b734ab923043d8e';

  var response = await http.get(Uri.parse(url));

  var jsonData = jsonDecode(response.body);
  // print(jsonData['articles']);

  if(jsonData['status'] == 'ok'){
    jsonData['articles'].forEach((element){
      if(element['urlToImage']!= null && element['description']!= null ) {

        ArticleModels articleModel = ArticleModels(
          title: element['title'],
          url: element['url'],
          urlToImage: element['urlToImage'],
          description: element['description'],
          publishedAt: element['publishedAt']

        );

        news.add(articleModel);

      }

    });

  }
   
 }

}


class CategoryNewsClass{
  List<ArticleModels> news = [];

 Future<void> getNews( String category)async {

   String url = 'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=8d9355d71cf0454e9b734ab923043d8e';

  var response = await http.get(Uri.parse(url));

  var jsonData = jsonDecode(response.body);
  // print(jsonData['articles']);

  if(jsonData['status'] == 'ok'){
    jsonData['articles'].forEach((element){
      if(element['urlToImage']!= null && element['description']!= null ) {

        ArticleModels articleModel = ArticleModels(
          title: element['title'],
          url: element['url'],
          urlToImage: element['urlToImage'],
          description: element['description'],
          publishedAt: element['publishedAt']

        );

        news.add(articleModel);

      }

    });

  }
   
 }
  

}