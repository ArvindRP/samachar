import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'category.dart';

class CategoryCards extends StatelessWidget {

  final imageURL, categoryName;
  const CategoryCards({ this.imageURL, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> CategoryNews(category: categoryName)));
        },
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: CachedNetworkImage(imageUrl: imageURL, width: 120, height: 60,fit: BoxFit.cover, )),
            Container(
              width: 120, height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black26,
              ),
              child: Text(categoryName , style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500
              ),
      
              ),
            )
          ],),
      ),
      
    );
  }
}
