import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app_2/screens/article_view_screen.dart';

class TrendingNews extends StatelessWidget {
  final String imageUrl, title, desc, url;

  const TrendingNews({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.desc,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArticleViewScreen(blogUrl: url),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Material(
            elevation: 3.0,
            borderRadius: BorderRadius.circular(10),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CachedNetworkImage(
                      imageUrl: imageUrl,
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.8,
                        child: Text(
                          title,
                          maxLines: 2,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.7,
                        child: Text(
                          desc,
                          maxLines: 3,
                          style: const TextStyle(
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
        ),
      ),
    );
  }
}
