import 'package:flutter/material.dart';
import 'package:news_app_2/services/data.dart';
import 'package:news_app_2/services/show_category_news.dart';
import 'package:news_app_2/widgets/app_bar.dart';
import 'package:news_app_2/widgets/show_category.dart';

import '../models/show_category_model.dart';

class CategoryNewsScreen extends StatefulWidget {
  String name;

  CategoryNewsScreen({super.key, required this.name});

  @override
  State<CategoryNewsScreen> createState() => _CategoryNewsScreenState();
}

class _CategoryNewsScreenState extends State<CategoryNewsScreen> {
  List<ShowCategoryModel> categories = [];
  bool _loading = false;

  getNews() async {
    ShowCategoryNews showCategoryNews = ShowCategoryNews();
    await showCategoryNews.getCategoryNews(widget.name.toLowerCase());
    categories = showCategoryNews.categories.cast<ShowCategoryModel>();
    setState(() {
      _loading = true;
    });
  }

  @override
  void initState() {
    getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.name,
          style: const TextStyle(
            color: Colors.deepOrangeAccent,
            fontSize: 23,
          ),
        ),
        centerTitle: true,
        elevation: 5.0,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.builder(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return ShowCategory(
                Image: categories[index].urlToImage!,
                desc: categories[index].description!,
                title: categories[index].title!,
                url: categories[index].url!,
              );
            }),
      ),
    );
  }
}
