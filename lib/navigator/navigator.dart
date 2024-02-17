import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes',
    initialRoute: '/',
    routes: {
      '/': (context) => const firstRoute(),
      '/second': (context) => const secondRoute(),
    },
  ));
}

class firstRoute extends StatelessWidget {
  const firstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ini halaman yang pertama 1'),
        backgroundColor: Color.fromARGB(255, 71, 220, 123),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Pergi ke halaman yang ke dua 2'),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class secondRoute extends StatelessWidget {
  const secondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ini halaman yang ke dua 2"),
        backgroundColor: const Color.fromARGB(255, 55, 96, 129),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Kembali ke halaman sebelumnya'),
        ),
      ),
    );
  }
}
