import 'package:dio_example2/post_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dio Example',
      debugShowCheckedModeBanner: false,
      home:  PostListScreen(),
    );
  }
}


