import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:samachar/screens/home.dart';
import 'package:samachar/utils/AppStateNotifier.dart';
import 'package:samachar/utils/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
    return ChangeNotifierProvider(create: (context)=>AppStateNotifier(),
    child: Consumer<AppStateNotifier>(builder: (context,theme,child)=>MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      // darkTheme: ThemeData.dark(),
      themeMode: theme.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
      
      home: Home(),
    ),)
    
    
    
    
    );
    
  }
}
