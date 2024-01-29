import 'package:flutter/material.dart';

class GridBasic extends StatelessWidget {
  const GridBasic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            color: Colors.black,
            child: Center(
              child: Text(
                "1",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                "2",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          Container(
            color: Colors.yellow,
            child: Center(
              child: Text(
                "3",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          Container(
            color: Colors.red,
            child: Center(
              child: Text(
                "4",
                style: TextStyle(fontSize: 24),
              ),
            ),
          )
        ],
      ),
    );
  }
}
