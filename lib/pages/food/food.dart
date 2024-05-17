import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Food extends StatefulWidget {
  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _commentsController = TextEditingController();

  Future<void> _submitOrder() async {
    final String quantity = _quantityController.text;
    final String email = _emailController.text;
    final String comments = _commentsController.text;

    final response = await http.post(
      Uri.parse('http://your-backend-api.com/order'),
      body: {
        'quantity': quantity,
        'email': email,
        'comments': comments,
      },
    );

    if (response.statusCode == 200) {
      // Order successfully submitted
      // Show confirmation message or navigate to a confirmation page
    } else {
      // Handle error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Product Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _quantityController,
                decoration: InputDecoration(labelText: 'Quantity'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                controller: _commentsController,
                decoration: InputDecoration(labelText: 'Comments'),
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
              SizedBox(height: 16),
              MaterialButton(
                color: Colors.deepOrange,
                textColor: Colors.white,
                onPressed: _submitOrder,
                child: Text('Submit Order'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
