import 'package:flutter/material.dart';
import 'package:samachar/screens/home.dart';
import 'package:samachar/utils/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      // darkTheme: AppTheme.darkTheme,
      darkTheme: ThemeData.dark(),
      
      home: Home(),
    );
  }
}
