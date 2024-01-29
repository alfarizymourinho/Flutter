import 'package:flutter/material.dart';

class Latihan extends StatelessWidget {
  const Latihan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //Home
                    height: 75,
                    width: MediaQuery.of(context).size.width - 20,
                    color: Colors.grey,
                    margin: const EdgeInsets.all(10),
                    child: const Center(
                      child: Text(
                        "Home",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.blue,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/img/ichika.jpg',
                          fit: BoxFit.cover,
                          height: 100,
                          width: 125,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.grey,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/img/ichika.jpg',
                          fit: BoxFit.cover,
                          height: 100,
                          width: 125,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: 330,
                    color: Colors.grey,
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/img/ichika.jpg',
                          fit: BoxFit.cover,
                          height: 100,
                          width: 125,
                        ),
                        // Tambahkan kodingan teks di sebelah kanan container berwarna coklat
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(20),
                            child: const Column(
                              children: [
                                Text(
                                  'Hari ini saya mempelajari materi flutter row dan column',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                  height: 150,
                  width: 330,
                  color: Colors.grey,
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/img/ichika.jpg',
                        fit: BoxFit.cover,
                        height: 100,
                        width: 125,
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(20),
                          child: const Column(
                            children: [
                              Text(
                                'Hari ini saya mengerjakan latihan flutter row dan column',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
