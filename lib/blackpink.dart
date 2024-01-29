import 'package:flutter/material.dart';

class blackpink extends StatelessWidget {
  blackpink({super.key});

  var androidVersions = [
    "Kim JI-Soo : Member BlackPink",
    "Lisa : Member Blackpink",
    "Jennie Kim: Member Blackpink",
    "Rose : Member Blackpink",
    "Kim JI-Soo : Member Blackpink",
    "Lisa",
    "Jennie Kim",
    "Rose",
    "Kim JI-Soo",
    "Lisa",
    "Jennie Kim",
    "Rose",
    "Kim JI-Soo",
    "Ready for love",
    "Bumbaya",
    "Hard To Love",
    "Pink Venom",
    "BoomBayah",
    "How You Like That",
    "Kill This Love",
  ];

  @override
 Widget build(BuildContext context) {
  return Column(
    children: [
      Container(
        height: 300,
        width: 500,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [const Color.fromARGB(255, 84, 67, 67), Colors.pink]),
        ),
        margin: EdgeInsets.all(20),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Text(
              "Mengenal BlackPink",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10), // Jarak antara judul dan konten
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.pink[300],
                  );
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      androidVersions[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink[300],
                      ),
                    ),
                  );
                },
                itemCount: androidVersions.length,
              ),
            ),
          ],
        ),
      ),
      Container(
        height: 180,
        width: 500,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.pink, Colors.black]),
        ),
        margin: EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(
              "Gallery Blackpink",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10), // Jarak antara judul dan konten
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/img/jarwo.webp',
                              fit: BoxFit.cover,
                              height: 100,
                              width: 125,
                            ),
                            Text("Foto Ke 1"),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/img/adel.jpg',
                              fit: BoxFit.cover,
                              height: 100,
                              width: 125,
                            ),
                            Text("Idol Favorit Saya"),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/img/aditjarwo.jpeg',
                              fit: BoxFit.cover,
                              height: 100,
                              width: 125,
                            ),
                            Text("Idol Favorit Saya"),
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/img/adit.jpg',
                              fit: BoxFit.cover,
                              height: 100,
                              width: 125,
                            ),
                            Text("Pacar Saya"),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      )
    ],
  );
}
}
