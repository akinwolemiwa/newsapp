
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/viewmodels/newsArticleViewModel.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsArticleDetailsPage extends StatelessWidget {

  final NewsArticleViewModel article;

  NewsArticleDetailsPage({this.article});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('${this.article.title}'),
        backgroundColor: Colors.black45,
      ),
      body: WebView(
        initialUrl: this.article.url,
      )
    );
  }
}
