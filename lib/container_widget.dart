import 'package:flutter_paris/main.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(30),
      alignment:  Alignment.center,
      // transform: Matrix4.rotationZ(0.2),
      decoration: BoxDecoration(
          // color: Colors.blueGrey,
          // gradient: RadialGradient(
          //   colors: [Colors.black87, Colors.deepPurpleAccent, Colors.orange],
          gradient: const LinearGradient(
            colors: [Color.fromARGB(255, 87, 163, 134), Colors.blueAccent],
          ),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black, width: 3)),
    );
  }
}
