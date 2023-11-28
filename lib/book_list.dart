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
    BookDetails(
      bookName: 'The Great Gatsby',
      authorName: 'F. Scott Fitzgerald',
      rating: '3.93',
      description: 'Set in the Jazz Age, it delves into the American Dream and its disillusionment.',
      price: '\$10.49',
    ),
    BookDetails(
      bookName: 'The Catcher in the Rye',
      authorName: 'J.D. Salinger',
      rating: '3.81',
      description: 'Follows a teenager’s journey through alienation and rebellion.',
      price: '\$9.99',
    ),
    BookDetails(
      bookName: 'পথের পাঁচালী',
      authorName: 'বিভূতিভূষণ বন্দ্যোপাধ্যায়',
      rating: '৪.২৭',
      description: 'রূরল লাইফ এবং প্রত্যাশার বিষয়টি ধরা ক্যাচ করা একটি ক্লাসিক বাংলা উপন্যাস।',
      price: '৳300',
    ),
    BookDetails(
      bookName: 'The Lord of the Rings',
      authorName: 'J.R.R. Tolkien',
      rating: '4.5',
      description: 'Epic fantasy adventure exploring themes of power and friendship.',
      price: '\$19.99',
    ),
    BookDetails(
      bookName: 'To the Lighthouse',
      authorName: 'Virginia Woolf',
      rating: '3.8',
      description: 'A narrative exploring the complexities of human relationships.',
      price: '\$8.95',
    ),
    BookDetails(
      bookName: 'Brave New World',
      authorName: 'Aldous Huxley',
      rating: '3.98',
      description: 'Dystopian novel questioning societal norms and technological advancement.',
      price: '\$11.00',
    ),
    BookDetails(
      bookName: 'ফেলুদা সিরিজ',
      authorName: 'সত্যজিৎ রায়',
      rating: '৪.১৮',
      description: 'প্রিয় বাংলা স্লুথ ফেলুদার ফেলুদা সিরিজের এক ধারাবাহিক গল্প।',
      price: '৳180',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book List'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
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
      margin: const EdgeInsets.only(bottom: 16.0),
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
            // Navigate to BuyNowPage with all necessary details
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BuyNowPage(
                  bookName: bookName,
                  authorName: authorName,
                  rating: rating,
                  description: description,
                  price: price,
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