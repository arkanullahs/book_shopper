import 'package:flutter/material.dart';
import 'book_list.dart';

void main() {
  runApp(BookApp());
}

class BookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown, // Change this to your desired color
      ),
      home: BookListPage(),
    );
  }
}
