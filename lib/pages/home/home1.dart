import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? value = 'sangeeta';
  @override
  void initState() {
    value = 'parth';
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final height = mq.size.height;
    final width = mq.size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(value!),
            Container(
              height: 300.0,
              width: 300.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('logo.png'),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  value = 'I love Sangeeta Kumari';
                });
                print(value);
              },
              child: Text('Click me'),
              color: Colors.blue,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
