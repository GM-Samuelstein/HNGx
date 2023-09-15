import 'package:flutter/material.dart';
import 'package:mobile_cv/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile CV',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      // theme: ThemeData.dark(
      //   useMaterial3: true,
      // ),
      home: const HomeScreen(),
    );
  }
}
