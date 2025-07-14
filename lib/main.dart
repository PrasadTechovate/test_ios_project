import 'package:flutter/material.dart';
import 'screens/webview_screen.dart';  // Import your screen

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web App Integration',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: ElevatedButton(
          child: Text("Open Web App"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => WebViewScreen()),
            );
          },
        ),
      ),
    );
  }
}
