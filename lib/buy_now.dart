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
        title: Text('Book Details & Checkout'),
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
              Image.asset(
                'assets/highres_images/${widget.bookName.toLowerCase().replaceAll(' ', '_')}.jpg',
                height: 200,
                width: 150,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  widget.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Text(
                widget.price,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  letterSpacing: 1.2,
                ),
              ),
              SizedBox(height: 18),
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
              SizedBox(height: 13),
              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Payment feature coming soon!'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                icon: Icon(Icons.payment),
                label: Text('Proceed to Secure Payment'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen.shade700,
                  //textStyle: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
                label: Text('Go Back'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade700,
                  //textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
