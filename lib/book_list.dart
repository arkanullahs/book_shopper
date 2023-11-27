import 'package:flutter/material.dart';
import 'buy_now.dart';

class BookDetails {
  final String bookName;
  final String authorName;
  final String rating;
  final String description;
  final String price;

  BookDetails({
    required this.bookName,
    required this.authorName,
    required this.rating,
    required this.description,
    required this.price,
  });
}

class BookListPage extends StatelessWidget {
  final List<BookDetails> bookDetailsList = [
    BookDetails(
      bookName: 'চোখের বালি',
      authorName: 'রবীন্দ্রনাথ ঠাকুর',
      rating: '৪.২১',
      description: 'সংসারের জটিলতা এবং সমাজের নীতির গঠন নিয়ে একটি গল্প।',
      price: '৳250',
    ),

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
          return _buildBookCard(
            bookDetails.bookName,
            bookDetails.authorName,
            bookDetails.rating,
            bookDetails.description,
            bookDetails.price,
            context,
          );
        },
      ),
    );
  }

  Widget _buildBookCard(
      String bookName,
      String authorName,
      String rating,
      String description,
      String price,
      BuildContext context,
      ) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: FlutterLogo(size: 56.0),
        title: Text(bookName),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(authorName),
            Text('Rating: $rating'),
          ],
        ),
        trailing: ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BuyNowPage(
                  bookName: bookName,
                  authorName: authorName,
                ),
              ),
            );
          },
          icon: Icon(Icons.shopping_cart),
          label: Text('Buy Now'),
        ),
      ),
    );
  }
}
