import 'package:bookapp/book.dart';
import 'package:bookapp/explore.dart';
import 'package:bookapp/main_screen.dart';
import 'package:bookapp/my_library_screen.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Urbanist',
       textTheme:TextTheme(
        
       ) ,
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}
