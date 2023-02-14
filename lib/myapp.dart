import 'package:cafeapplication/foodlist.dart';
import 'package:cafeapplication/homepage.dart';
import 'package:cafeapplication/secondscreen.dart';
import 'package:cafeapplication/card.dart';
import 'package:cafeapplication/first_screen.dart';
import 'package:cafeapplication/third_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:  HomePage(),

    );
  }
}