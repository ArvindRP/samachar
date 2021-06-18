import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {

  String blogUrl;
  ArticleView({required this.blogUrl});  
  @override
  _ArticleViewState createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {

  final Completer<WebViewController> _completer = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      toolbarHeight: kToolbarHeight-7,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),  
    ),
        title:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 85),
          child: Text(
              "Samachar",
              style: TextStyle(
                color: Colors.blue
              ),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: WebView( 
          initialUrl: widget.blogUrl,
          onWebViewCreated: ((WebViewController webViewController){
            _completer.complete(webViewController);
          }),
        ),
        
      ),
    );
  }
}