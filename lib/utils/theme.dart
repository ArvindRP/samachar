import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class AppTheme{

  static final ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(color: Colors.white, iconTheme: IconThemeData(color: Colors.black)),
    primaryTextTheme: TextTheme(
      headline6: TextStyle(color: Colors.blue),
    ),
    cardTheme: CardTheme(color: Colors.white),
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      bodyText2: TextStyle(color: Colors.blueAccent))

    

  );

  static final ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(color: Colors.black12,
     iconTheme: IconThemeData(color: Colors.white),
     systemOverlayStyle:SystemUiOverlayStyle(statusBarColor: Colors.white),),
     brightness: Brightness.dark,// Must Use for showing Status bar else it will be black 
    primaryTextTheme: TextTheme(
      headline6: TextStyle(color: Colors.blue),
    ),
    cardTheme: CardTheme(color: Colors.black26),
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextTheme(
      bodyText2: TextStyle(color: Colors.greenAccent))


  );
  
}