import 'package:flutter/material.dart';
import 'package:flutter_paris/gridview/sopo_jarwo.dart';

// import 'nama.dart';
// import 'column_widget.dart';
// import 'row_widget.dart';
// import 'latihan_row_column.dart';
// import 'icon.dart';
// import 'listview_basic.dart';
// import 'listview_builder.dart';
// import 'listview_separated.dart';
// import 'blackpink.dart';
// import 'gridview/grid_basic.dart';
// import 'gridview/grid_count.dart';
// import 'sopo_jarwo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sopo & Jarwo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Sopo & Jarwo"),
          backgroundColor: Colors.red[200],
          centerTitle: true,
        ),
        body: SopoJarwo(),
      ),
    );
  }
}

class BelajarHelloWorld extends StatelessWidget {
  const BelajarHelloWorld({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hai nama ku alfarizy",
      style: TextStyle(
          fontSize: 24, fontWeight: FontWeight.bold, color: Colors.grey[400]),
    );
  }
}
