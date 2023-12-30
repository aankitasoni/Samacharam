import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                "images/img.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.7,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "News from around the\n         world for you",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Best time to read, take your time to read\n               a little more of this world",
              style: TextStyle(
                color: Colors.black45,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Material(
              child: Container(
                width: MediaQuery.of(context).size.width / 1.2,
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
