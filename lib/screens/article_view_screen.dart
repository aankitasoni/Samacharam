import 'package:flutter/material.dart';
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
    return Container(
      child: WebView(
        initialUrl: widget.blogUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
