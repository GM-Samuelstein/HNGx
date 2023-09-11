import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Persona',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.4,
        title: const Center(
            child: Text(
          'My Profile',
          style: TextStyle(
            color: Colors.white,
          ),
        )),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Center(
            child: Column(children: [
          const Image(
              image: AssetImage('assets/images/Slack_Profile_Picture.jpg')),
          const SizedBox(height: 4),
          const Text(
            'Samuel Ibitowa',
            style: TextStyle(
              fontFamily: 'SourceSans3',
              letterSpacing: 0.4,
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/GM-Samuelstein'),
                mode: LaunchMode.inAppWebView,
              );
            },
            child: const Text('Open GitHub'),
          )
        ])),
      ),
    );
  }
}
