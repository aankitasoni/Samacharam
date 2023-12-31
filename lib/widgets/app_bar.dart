import 'package:flutter/material.dart';

Widget appBar() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "समा",
        style: TextStyle(
          fontSize: 33,
        ),
      ),
      Text(
        "चारं",
        style: TextStyle(
          color: Colors.deepOrange,
          fontSize: 33,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
