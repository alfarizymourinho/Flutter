import 'package:flutter_paris/main.dart';
import 'package:flutter/material.dart';

class Nama extends StatelessWidget {
  const Nama({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.all(1),
      alignment: Alignment.center,
      // transform: Matrix4.rotationZ(0.2),
      decoration: BoxDecoration(
          // color: Colors.blueGrey,
          // gradient: RadialGradient(
          //   colors: [Colors.black87, Colors.deepPurpleAccent, Colors.orange],
          gradient: const LinearGradient(
            colors: [Colors.yellow, Colors.red],
          ),
          border: Border.all(color: Colors.black, width: 3)),
      child: Container(
        height: double.infinity,
        width: double.infinity,
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [Colors.grey, Colors.red]),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 3)),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(15),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [Colors.red, Colors.yellow]),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 3)),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [Colors.blueGrey, Colors.red]),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 3)),
            child: const BelajarHelloWorld(),
          ),
        ),
      ),
    );
  }
}
