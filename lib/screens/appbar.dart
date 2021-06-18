import 'package:flutter/material.dart';


class AppBarCustom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: GestureDetector(
              onTap: (){
                
              },
              child: Text(
                "Samachar",
                style: TextStyle(
                  color: Colors.blue
                ),
              ),
            ),
          ),
          elevation: 0.0,
        ),
    );
  }
}