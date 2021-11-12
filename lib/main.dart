import 'package:flutter/material.dart';
import 'package:downloaded_page/screens/downloaded_videos_screen.dart';
import 'package:downloaded_page/screens/downloaded_documents_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DownloadedVideoScreen(),
    );
  }
}
