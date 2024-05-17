import 'package:firstdietfoods/constants/constants.dart';
import 'package:firstdietfoods/extension/capitalize.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:google_fonts/google_fonts.dart';

class ComingSoonPage extends StatefulWidget {
  @override
  State<ComingSoonPage> createState() => _ComingSoonPageState();
}

class _ComingSoonPageState extends State<ComingSoonPage> {
  @override
  void initState() {
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
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  Constants.bg!,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Black overlay
          ColorFiltered(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Coming Soon',
                  style: GoogleFonts.caveat(
                    fontSize: width * .045,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Exciting things are coming!',
                  style: GoogleFonts.caveat(
                    fontSize: width * .03,
                    color: Colors.pink,
                  ),
                ),
                SizedBox(height: 30.0),
                CountdownTimer(
                  endTime: DateTime(2024, 05, 20).millisecondsSinceEpoch,
                  widgetBuilder: (_, CurrentRemainingTime? time) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  time!.days.toString(),
                                  style: GoogleFonts.caveat(
                                    fontSize: width * .03,
                                    color: Colors.pink,
                                  ),
                                ),
                                Text(
                                  'days'.capitalize(),
                                  style: GoogleFonts.caveat(
                                    fontSize: width * .03,
                                    color: Colors.pink,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: width * .05),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  time.hours.toString(),
                                  style: GoogleFonts.caveat(
                                    fontSize: width * .03,
                                    color: Colors.pink,
                                  ),
                                ),
                                Text(
                                  'hours'.capitalize(),
                                  style: GoogleFonts.caveat(
                                    fontSize: width * .03,
                                    color: Colors.pink,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: width * .05),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  time.min.toString(),
                                  style: GoogleFonts.caveat(
                                    fontSize: width * .03,
                                    color: Colors.pink,
                                  ),
                                ),
                                Text(
                                  'minutes'.capitalize(),
                                  style: GoogleFonts.caveat(
                                    fontSize: width * .03,
                                    color: Colors.pink,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: width * .05),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  time.sec.toString(),
                                  style: GoogleFonts.caveat(
                                    fontSize: width * .03,
                                    color: Colors.pink,
                                  ),
                                ),
                                Text(
                                  'seconds'.capitalize(),
                                  style: GoogleFonts.caveat(
                                    fontSize: width * .03,
                                    color: Colors.pink,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
