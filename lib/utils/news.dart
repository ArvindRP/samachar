import 'dart:convert';
import 'package:samachar/Modals/articlemodals.dart';
import 'package:http/http.dart' as http;
import 'package:samachar/screens/home.dart';

import '../Modals/articlemodals.dart';


class News{
  List<ArticleModels> news = [];

 Future<void> getNews()async {

String url = 'https://newsapi.org/v2/top-headlines?country=$country&pageSize=100&category=entertainment&apiKey=8d9355d71cf0454e9b734ab923043d8e';

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

 Future<void> getNews( String country,String category)async {

   String url = 'https://newsapi.org/v2/top-headlines?country=$country&pageSize=100&category=$category&apiKey=8d9355d71cf0454e9b734ab923043d8e';

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