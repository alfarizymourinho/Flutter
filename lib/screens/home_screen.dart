
import 'package:flutter/material.dart';
import 'package:flutter_paris/icon.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ini Halaman Home"),
          ],
        ),
      ),
    );
  }
}