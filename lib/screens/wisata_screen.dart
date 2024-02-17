import 'package:flutter_paris/screens/detail_wisata.dart';
import 'package:flutter/material.dart';
import '../helpers//size_helper.dart';

class ListWisataScreen extends StatelessWidget {
  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": "Kurama",
      "kota": "Konoha",
      "image": "assets/img/kyubi.jpeg",
      "desc":
          "Kyubi, atau dalam bahasa Indonesia berarti Ekor Sembilan, adalah makhluk yang terdapat pada serial manga Naruto yang baru-baru ini tamat. Kyubi, bernama asli Kurama, adalah hewan berbentuk musang yang tercipta dari pecahan kekuatan besar Ekor Sepuluh atau Juubi."
    },
    {
      "nama": "Gyuki",
      "kota": "Kumogakure",
      "image": "assets/img/gyuki.png",
      "desc":
          "Gyuki adalah Ekor Delapan yang bersemayam di dalam Killer B. Selain kekuatan spiritualnya, ia juga dapat menggunakan berbagai ekor guritanya untuk menghasilkan banyak kerusakan. Lebih lanjut, Gyuki juga dapat menggerakkan chakra B dan mengeluarkan genjutsu apa pun, kecuali Tsukuyomi Tak Terbatas."
    },
    {
      "nama": "Son Goku",
      "kota": "Iwagakure",
      "image": "assets/img/songoku.jpg",
      "desc":
          "Son Gokū (孫悟空, Son Gokū), lebih dikenal sebagai Ekor-Empat (四尾, Yonbi), adalah salah satu dari sembilan monster berekor."
    },
    {
      "nama": "Isobu",
      "kota": "Amegakure",
      "image": "assets/img/sanbi.jpg",
      "desc":
          "Bentuk tubuh Isobu sangat aneh, seperti kura-kura namun dengan cangkang berduri seperti kepiting. Dia juga memiliki tangan dan kaki seperti manusia. Namanya diambil dari hantu laut Jepang Isonade. Dia adalah Bijuu pertama yang muncul dalam keadaan liar."
    },
    {
      "nama": "Shukaku",
      "kota": "Sunagakure",
      "image": "assets/img/shukaku.jpeg",
      "desc":
          "Shukaku adalah tanuki berwarna cokelat, dengan warna hitam (biru tua di anime) dengan tanda segel kutukan di seluruh wajahnya, tubuh, dan ekor."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/ichika.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: wisataData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailWisataScreen(
                      nama: wisataData[index]["nama"],
                      kota: wisataData[index]["kota"],
                      image: wisataData[index]["image"],
                      desc: wisataData[index]["desc"],
                    ),
                  ),
                );
              },
              child: Container(
                height: 300,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(wisataData[index]["image"]),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  "${wisataData[index]["nama"]} - ${wisataData[index]["kota"]}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
