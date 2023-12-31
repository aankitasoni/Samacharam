import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/slider_model.dart';

class Sliders {
  List<SliderModel> sliders = [];

  Future<void> getSlider() async {
    String url =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=dd4f74f275114efcae45eafb6c154eef";
    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData["articles"].forEach(
        (element) {
          if (element["urlToImage"] != null && element['description'] != null) {
            SliderModel sliderModel = SliderModel(
              title: element["title"],
              description: element["description"],
              url: element["url"],
              urlToImage: element["urlToImage"],
              content: element["content"],
              author: element["author"],
            );
            sliders.add(sliderModel);
          }
        },
      );
    }
  }
}
