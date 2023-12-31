import 'package:flutter/material.dart';
import 'package:news_app_2/screens/home_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                "images/samacharam.png",
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
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.7,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
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
