import 'package:flutter/material.dart';
import 'package:news_app_2/widgets/all_news_section.dart';

import '../models/article_model.dart';
import '../models/slider_model.dart';
import '../services/news_data.dart';
import '../services/slider_data.dart';

class AllNews extends StatefulWidget {
  final String news;

  const AllNews({
    super.key,
    required this.news,
  });

  @override
  State<AllNews> createState() => _AllNewsState();
}

class _AllNewsState extends State<AllNews> {
  List<SliderModel> sliders = [];
  List<ArticleModel> articles = [];

  getNews() async {
    News news = News();
    await news.getNews();
    articles = news.news;
    setState(() {});
  }

  getSlider() async {
    Sliders slider = Sliders();
    await slider.getSlider();
    sliders = slider.sliders;
    setState(() {});
  }

  @override
  void initState() {
    getSlider();
    getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${widget.news} News",
          style: const TextStyle(
            color: Colors.purple,
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
            itemCount:
                widget.news == "Breaking" ? sliders.length : articles.length,
            itemBuilder: (context, index) {
              return AllNewsSection(
                image: widget.news == "Breaking"
                    ? sliders[index].urlToImage!
                    : articles[index].urlToImage!,
                desc: widget.news == "Breaking"
                    ? sliders[index].description!
                    : articles[index].description!,
                title: widget.news == "Breaking"
                    ? sliders[index].title!
                    : articles[index].title!,
                url: widget.news == "Breaking"
                    ? sliders[index].url!
                    : articles[index].url!,
              );
            }),
      ),
    );
  }
}
