import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:samachar/Modals/articlemodals.dart';
import 'package:samachar/Modals/categorymodal.dart';
import 'package:samachar/utils/AppStateNotifier.dart';
import 'package:samachar/utils/data.dart';
import 'package:samachar/utils/news.dart';
import 'blogtile.dart';
import 'categorycard.dart';

String country = 'in';

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

  void updatState(){
    categories = getCategories();
    setState(() {
      _loading = true;
    });
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
      primary: true,
      appBar: AppBar(
          toolbarHeight: kToolbarHeight-7,
          shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
      
    ),
          title: Padding(
            padding: EdgeInsets.only(left: 140),
            child: Consumer<AppStateNotifier>(builder: (context,theme,child)=>
            InkWell(
              onTap: ()=>theme.updateTheme(),
              child: Text(
                "Samachar",
                style: TextStyle(
                   color: theme.isDarkModeOn ? Colors.greenAccent  : Colors.blue
                ),
              ),
            ),
            )  
          ),
          actions: [
            PopupMenuButton<String>(
              onSelected: (value)=>{
                country = value ,
                
                updatState(),
                

              },
            itemBuilder: (context) {
              return [
                
                PopupMenuItem<String>(
                  child: const Text(
                    "India"
                  ),
                  value: 'in',
                  
                ),
                PopupMenuItem(
                  child: Text(
                    "USA",
                  ),
                  value: 'us'
                ),
                PopupMenuItem(
                  child: Text(
                    "Japan",
                  ),
                  value: 'jp'
                ),
              ];
            },
          )

          ],
        ),

      body: _loading? Center(
        child: Container(
          child: Consumer<AppStateNotifier>(builder: (context,theme,child)=>CircularProgressIndicator(
            color: theme.isDarkModeOn ? Colors.greenAccent  : Colors.blue,
          ))),
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


