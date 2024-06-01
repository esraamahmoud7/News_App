import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/services/news_services.dart';
import 'package:news/views/homePage.dart';

void main() {
  runApp(const newsApp());
}

class newsApp extends StatelessWidget {
  const newsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),

    );
  }
}
