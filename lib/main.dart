import 'package:flutter/material.dart';
import 'package:sam/homePage.dart';
import 'package:sam/profile.dart';
import 'package:sam/videoPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VideoPage(),
    );
  }
}
