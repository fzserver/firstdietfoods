import '../daliaInfo/dalia_info.dart';
import '../home/home.dart';
import 'package:flutter/material.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/dalia-info': (context) => DaliaInfoPage(),
      },
    );
  }
}
