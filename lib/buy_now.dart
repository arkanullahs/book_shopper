import 'package:flutter/material.dart';

class BuyNowPage extends StatefulWidget {
  final String bookName;
  final String authorName;
  final String rating;
  final String description;
  final String price;

  BuyNowPage({
    required this.bookName,
    required this.authorName,
    required this.rating,
    required this.description,
    required this.price,
  });

  @override
  _BuyNowPageState createState() => _BuyNowPageState();
}

class _BuyNowPageState extends State<BuyNowPage> {
  String? selectedOption;

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
              Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  widget.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              SizedBox(height: 12.0),
              Text(
                widget.price,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                  letterSpacing: 1.2,
                ),
              ),
              SizedBox(height: 20),
              DropdownButton<String>(
                onChanged: (String? value) {
                  if (value != null && value != 'Select an option') {
                    setState(() {
                      selectedOption = value;
                    });
                  }
                },
                value: selectedOption,
                hint: Text('Please Select Delivery Option'),
                items: [
                  DropdownMenuItem(
                    value: 'Home delivery',
                    child: Text('Home delivery'),
                  ),
                  DropdownMenuItem(
                    value: 'In-store pickup',
                    child: Text('In-store pickup'),
                  ),
                  DropdownMenuItem(
                    value: 'Express delivery',
                    child: Text('Express delivery'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Payment feature coming soon!'),
                      duration: Duration(seconds: 2),
                    ),
                  );
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
