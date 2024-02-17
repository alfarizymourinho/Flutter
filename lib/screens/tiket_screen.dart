import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';

class TicketScreen extends StatelessWidget {
  final String nama, tgl, Tour, jml, harga, totalharga, img;
  TicketScreen({
    Key? key,
    required this.nama,
    required this.Tour,
    required this.jml,
    required this.tgl,
    required this.harga,
    required this.totalharga,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // backgroundColor: Colors.blueAccent,
        title: Text("Ticket nya broo!"),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/ichika.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 4.0,
                color: const Color.fromARGB(255, 255, 255, 255),
                margin: EdgeInsets.only(top: 24, right: 24, left: 24),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: const Color.fromARGB(255, 255, 0, 0),
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "${img}",
                          fit: BoxFit.cover,
                          height: displayHeight(context) * 0.25,
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Nama Lengkap : " + nama,
                            style: TextStyle(),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Tujuan Tour : " + Tour),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Kapan : " + tgl),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Harga : Rp." + harga),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Jumlah : " + jml),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Total nya broo : Rp." + totalharga),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    
  }
}