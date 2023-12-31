import 'package:flutter/material.dart';
import 'package:news_app_2/widgets/app_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleViewScreen extends StatefulWidget {
  String blogUrl;

  ArticleViewScreen({required this.blogUrl});

  @override
  State<ArticleViewScreen> createState() => _ArticleViewScreenState();
}

class _ArticleViewScreenState extends State<ArticleViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(),
        elevation: 5.0,
      ),
      body: WebView(
        initialUrl: widget.blogUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
