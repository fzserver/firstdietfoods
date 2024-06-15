import 'package:firstdietfoods/constants/assetsConstants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/menuitem.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  ScrollController _scrollController = ScrollController();
  double _scrollOffset = 0.0;
  AnimationController? _controller;
  final double velocity = 30.0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final double duration =
          (MediaQuery.of(context).size.width / velocity * 1000);
      _controller = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: duration.toInt()),
      );

      _controller!.addListener(() {
        setState(() {
          _scrollOffset =
              _controller!.value * _scrollController.position.maxScrollExtent;
          _scrollController.jumpTo(_scrollOffset);
        });

        if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent) {
          _scrollController.jumpTo(0);
        }
      });

      _controller!.repeat();
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 25.0,
            width: width,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              child: Container(
                width: width * 1.7,
                decoration: BoxDecoration(
                  color: Colors.amber[900],
                ),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  style: GoogleFonts.poppins(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 70,
                  width: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AssetsConstants.logoPath),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: width * .03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MenuBarItem(
                          title: 'Home',
                          fontSize: width * .01,
                          onTap: () {
                            print('Home clicked');
                          }),
                      SizedBox(width: 30),
                      MenuBarItem(
                          title: 'About',
                          fontSize: width * .01,
                          onTap: () {
                            print('About clicked');
                          }),
                      SizedBox(width: 30),
                      MenuBarItem(
                          title: 'Contact',
                          fontSize: width * .01,
                          onTap: () {
                            print('Contact clicked');
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(AssetsConstants.product06Path),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'First Diet Organic Dalia',
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Dalia is a nutritious whole grain that is commonly used in various cuisines around the world. '
                            'It is known for its high fiber content and is often used in porridge, soups, and salads. '
                            'Dalia is also rich in vitamins and minerals, making it a healthy addition to any diet.',
                            style: GoogleFonts.poppins(fontSize: 16.0),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Benefits of Dalia:',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
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
                          SizedBox(height: 20),
                          Text(
                            'Ingredients:',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '1. Broken Wheat\n'
                            '2. Double Toned Milk\n'
                            '3. Added Sugar',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
