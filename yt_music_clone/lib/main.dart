import 'package:flutter/material.dart';
import 'package:yt_music_clone/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ));
  }
}
