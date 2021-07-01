import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:samachar/Modals/articlemodals.dart';
import 'package:samachar/utils/AppStateNotifier.dart';
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
    
    await newsClass.getNews(country,widget.category.toLowerCase());
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
          child: Consumer<AppStateNotifier>(builder: (context,theme,child)=>Text(
            widget.category,
            style: TextStyle(
              color: theme.isDarkModeOn ? Colors.greenAccent  : Colors.blue
            ),
          ),
        ),)
      ),

      body: _loading ? Center(child: Consumer<AppStateNotifier>(builder: (context,theme,child)=>CircularProgressIndicator(color: theme.isDarkModeOn? Colors.greenAccent : Colors.blue,),)) :  
      
      SingleChildScrollView(
        child: Container(
          // color: Colors.white,
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