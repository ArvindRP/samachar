
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:samachar/utils/AppStateNotifier.dart';

import 'article.dart';

class BlogTile extends StatelessWidget {

  final String imgageURL,title,desc,url;

  const BlogTile({ required this.imgageURL, required this.title, required this.desc, required this.url});
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ArticleView(blogUrl: url,)));
      },
      child: Consumer<AppStateNotifier>(builder: (context,theme,child)=>Card(
        child: Container(
          margin: EdgeInsets.only(bottom: 15),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(imageUrl: imgageURL)),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(title, style: TextStyle(
                  fontSize: 15,
                  color: theme.isDarkModeOn ? Colors.white  : Colors.black
                ),),
              ),
              SizedBox(height: 6,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(desc, style: TextStyle(
                  fontSize: 12,
                  // color: theme.isDarkModeOn ? Colors.greenAccent  : Colors.blue
                ),),
              )
            ],
          ),
          
        ),
      ),
      )
    );
  }
}