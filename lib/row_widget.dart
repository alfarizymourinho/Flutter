import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.blueAccent,
                child: FlutterLogo(),
                margin: EdgeInsets.all(10),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: FlutterLogo(),
                margin: EdgeInsets.all(10),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.deepPurpleAccent,
                child: FlutterLogo(),
                margin: EdgeInsets.all(10),
              ),
                Container(
                height: 100,
                width: 100,
                color: Colors.deepPurpleAccent,
                child: FlutterLogo(),
                margin: EdgeInsets.all(10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}