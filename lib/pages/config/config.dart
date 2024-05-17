import 'package:firstdietfoods/pages/comingsoon/comingsoon.dart';
import 'package:flutter/material.dart';
import '../home/home.dart';

class ConfigApp extends StatefulWidget {
  const ConfigApp({super.key});

  @override
  State<ConfigApp> createState() => _ConfigAppState();
}

class _ConfigAppState extends State<ConfigApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Diet Foods',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: ComingSoonPage(),
    );
  }
}
