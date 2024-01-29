import 'package:flutter/material.dart';

class SopoJarwo extends StatelessWidget {
  //  SopoJarwo({super.key});

  final List<String> image = <String>[
    'assets/img/adel.jpg',
    'assets/img/adit.jpg',
    'assets/img/jarwo.webp',
    'assets/img/aditjarwo.jpeg',
    'assets/img/ichika.jpg',
    'assets/img/pak haji.jpg',
    'assets/img/ucup.jpg',
    'assets/img/cina.jpg',
    'assets/img/satpam.jpg',
    'assets/img/denis.jpg'
  ];
  var androidVersions = [
    "Adit",
    "Adel",
    "Jarwo",
    "Sopo",
    "Denis",
    "Bunda Adit",
    "Ayah Adit",
    "Mang Ujang",
    "Pak Haji",
    "Ucup"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Column(
          children: [
            Container(
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  const Color.fromARGB(255, 84, 67, 67),
                  Colors.pink
                ]),
              ),
              margin: EdgeInsets.all(20),
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Text(
                    "Karakter Adit Sopo & Jarwo",
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
          ],
        ),
        Center(
          child: Column(
            children: [
              Container(
                height: 300,
                width: 470,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    const Color.fromARGB(255, 84, 67, 67),
                    Colors.pink
                  ]),
                ),
                margin: EdgeInsets.all(20),
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Text(
                      "Galeri Sopo Jarwo",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: GridView.count(
                        scrollDirection: Axis.vertical,
                        crossAxisCount: 2,
                        children: List.generate(
                          image.length,
                          (index) => Container(
                            child: Card(
                              color: Colors.pink,
                              child: Image.asset(
                                '${image[index]}', // Ganti dengan path dan nama file gambar yang sesuai
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 180,
          width: 500,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 170, 82, 82),
              Color.fromARGB(255, 54, 54, 232)
            ]),
          ),
          margin: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                "Peran Adit Sopo & Jarwo",
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
                              Text(
                                "Pengangguran",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
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
                              Text(
                                "Idol Favorit Saya",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
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
                              Text(
                                "Musuhan",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
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
                              Text(
                                "Anak Nakal",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
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
        ),
      ],
    );
  }
}
