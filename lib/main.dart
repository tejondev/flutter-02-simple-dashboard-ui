import 'package:flutter/material.dart';

import 'presentation/screens/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Dasbhboard',
      theme: ThemeData(
        colorSchemeSeed: Colors.blueGrey.shade900,
        brightness: Brightness.dark,
      ),
      home: const HomePage(),
    );
  }
}
