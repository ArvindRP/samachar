import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:samachar/Modals/articlemodals.dart';
import 'package:samachar/Modals/categorymodal.dart';
import 'package:samachar/utils/data.dart';
import 'package:samachar/utils/news.dart';
import 'blogtile.dart';
import 'categorycard.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  List<CategoryModel> categories = [];
  List<ArticleModels> articles = [];

  bool _loading = true;

  @override
  void initState() {
    super.initState();
    categories = getCategories();
    getNews();

  }

  getNews() async{

    News newsClass = News();
    
    await newsClass.getNews();
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
          title: Center(
            child: Text(
              "Samachar",
              style: TextStyle(
                color: Colors.blue
              ),
            ),
          ),
        ),

      body: _loading? Center(
        child: Container(
          child: CircularProgressIndicator()),
      ) : SingleChildScrollView(    
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 7),
          child: Column(
            children: <Widget>[ 
              Container(
                height: 70,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index){
                    return CategoryCards(
                      imageURL: categories[index].imageURL,
                      categoryName: categories[index].categoryName,
                    );
                  }),
              ),      
      
              ///Articles
              Container(
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
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
      
            ],
          ),
      
        ),
      ),
      
    );
  }
}


