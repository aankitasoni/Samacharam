import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app_2/services/data.dart';
import 'package:news_app_2/services/slider_data.dart';
import 'package:news_app_2/widgets/app_bar.dart';
import 'package:news_app_2/widgets/build_image.dart';
import 'package:news_app_2/widgets/build_indicator.dart';

import '../models/category_model.dart';
import '../models/slider_model.dart';
import '../widgets/category_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> categories = [];
  List<SliderModel> sliders = [];

  int activeIndex = 0;

  @override
  void initState() {
    categories = getCategories();
    sliders = getSliders();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10.0),
                height: 70,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return CategoryTile(
                      image: categories[index].image,
                      categoryName: categories[index].categoryName,
                    );
                  },
                ),
              ),
              const SizedBox(height: 30.0),
              const Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Breaking News!",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              CarouselSlider.builder(
                itemCount: sliders.length,
                itemBuilder: (
                  context,
                  index,
                  realImage,
                ) {
                  String? res = sliders[index].image;
                  String? res1 = sliders[index].name;
                  return BuildImage(image: res!, index: index, name: res1!);
                },
                options: CarouselOptions(
                    height: 250,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeIndex = index;
                      });
                    }),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Center(
                child: BuildIndicator(
                  activeIndex: activeIndex,
                  count: sliders.length,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trending News!",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Material(
                  elevation: 3.0,
                  borderRadius: BorderRadius.circular(10),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "images/science.jpg",
                              height: 120,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1.8,
                              child: Text(
                                "Rio de outskrit to the screen part to the part of news",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17.0,
                                ),
                              ),
                            ),
                            const SizedBox(height: 7,),
                            Container(
                              width: MediaQuery.of(context).size.width / 1.7,
                              child: Text(
                                "Then a final kick",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
