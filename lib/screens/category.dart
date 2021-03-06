import 'package:flutter/material.dart';
import 'package:samachar/Modals/articlemodals.dart';
import 'package:samachar/utils/news.dart';

import 'blogtile.dart';
import 'home.dart';

class CategoryNews extends StatefulWidget {

  final String category;
  CategoryNews({required this.category});



  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {

  List<ArticleModels> articles = [];
    bool _loading = true;

  @override
  void initState() {
    super.initState();
    getCategoryNews();
  }

  getCategoryNews() async{

    CategoryNewsClass newsClass = CategoryNewsClass();
    
    await newsClass.getNews(widget.category.toLowerCase());
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight-7,
        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),    
    ),
        title: Padding(
          padding: EdgeInsets.only(right: 20),
          child: Text(
            widget.category,
            style: TextStyle(
              color: Colors.blue
            ),
          ),
        ),
      ),

      body: _loading ? Center(child: CircularProgressIndicator(color: Colors.blueGrey,),) :  
      
      SingleChildScrollView(
        child: Container(
          color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 6),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: articles.length,
                    itemBuilder: (context, index){
                      return BlogTile(
                        imgageURL: articles[index].urlToImage,
                        title: articles[index].title, 
                        desc: articles[index].description,
                        url: articles[index].url,
                         );
                    }),
                ),
      ),
      
    );
  }
}