import 'package:flutter/material.dart';

class BuyNowPage extends StatefulWidget {
  final String bookName;
  final String authorName;

  BuyNowPage({
    required this.bookName,
    required this.authorName,

  });

  @override
  _BuyNowPageState createState() => _BuyNowPageState();
}

class _BuyNowPageState extends State<BuyNowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.bookName,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                widget.authorName,
                style: TextStyle(
                  fontSize: 18.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 20),
              FlutterLogo(size: 100),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {

                },
                child: Text('Proceed to Payment'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
