import 'package:flutter/material.dart';

class DaliaInfoPage extends StatefulWidget {
  @override
  State<DaliaInfoPage> createState() => _DaliaInfoPageState();
}

class _DaliaInfoPageState extends State<DaliaInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Dalia'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Dalia',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Dalia is a nutritious whole grain that is commonly used in various cuisines around the world. '
              'It is known for its high fiber content and is often used in porridge, soups, and salads. '
              'Dalia is also rich in vitamins and minerals, making it a healthy addition to any diet.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Benefits of Dalia:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '1. High in Fiber\n'
              '2. Rich in Vitamins and Minerals\n'
              '3. Helps in Weight Management\n'
              '4. Good for Digestive Health\n'
              '5. Versatile and Easy to Cook',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
