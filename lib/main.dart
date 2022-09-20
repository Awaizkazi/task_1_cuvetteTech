import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_1/tab_bar.dart';
import 'package:task_1/tab_bar_pages/page_2.dart';
import 'home_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
