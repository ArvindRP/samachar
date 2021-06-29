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
      bodyText2: TextStyle(color: Colors.green))

    

  );

  static final ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(color: Colors.black26,
     iconTheme: IconThemeData(color: Colors.white),
     systemOverlayStyle:SystemUiOverlayStyle(statusBarColor: Colors.white),),
    primaryTextTheme: TextTheme(
      headline6: TextStyle(color: Colors.blue),
    ),
    cardTheme: CardTheme(color: Colors.black54),
    scaffoldBackgroundColor: Colors.black26,
    textTheme: TextTheme(
      bodyText2: TextStyle(color: Colors.green))


  );
  
}