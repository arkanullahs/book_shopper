import 'package:flutter/material.dart';

class BookDetails {
  final String bookName;
  final String authorName;

  BookDetails({
    required this.bookName,
    required this.authorName,
  });
}

class BookListPage extends StatelessWidget {
  final List<BookDetails> bookDetailsList = [
    BookDetails(
      bookName: 'Book 1',
      authorName: 'Author 1',
    ),
    BookDetails(
      bookName: 'Book 2',
      authorName: 'Author 2',
    ),
    // Add more books here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book List'),
      ),
      body: ListView.builder(
        itemCount: bookDetailsList.length,
        itemBuilder: (context, index) {
          BookDetails bookDetails = bookDetailsList[index];
          return ListTile(
            title: Text(bookDetails.bookName),
            subtitle: Text(bookDetails.authorName),
          );
        },
      ),
    );
  }
}
