import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app_2/screens/article_view_screen.dart';

class AllNewsSection extends StatelessWidget {
  final String image, desc, title, url;

  const AllNewsSection({
    super.key,
    required this.image,
    required this.desc,
    required this.title,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArticleViewScreen(blogUrl: url)));
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: CachedNetworkImage(
              imageUrl: image,
              width: MediaQuery.of(context).size.width,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            title,
            maxLines: 2,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          Text(
            desc,
            maxLines: 3,
            style: const TextStyle(
              color: Colors.black45,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
