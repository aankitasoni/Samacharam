import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app_2/models/show_category_model.dart';


class ShowCategoryNews {
  List<ShowCategoryModel> categories = [];

  Future<void> getCategoryNews(String category) async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=dd4f74f275114efcae45eafb6c154eef";
    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData["articles"].forEach(
            (element) {
          if (element["urlToImage"] != null && element['description'] != null) {
             ShowCategoryModel categoryModel = ShowCategoryModel(
              title: element["title"],
              description: element["description"],
              url: element["url"],
              urlToImage: element["urlToImage"],
              content: element["content"],
              author: element["author"],
            );
            categories.add(categoryModel);
          }
        },
      );
    }
  }
}