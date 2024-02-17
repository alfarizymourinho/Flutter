import 'package:flutter/material.dart';
import 'package:flutter_paris/helpers/size_helper.dart';
import 'package:flutter_paris/screens/Tiket_screen.dart';
import 'package:intl/intl.dart';

class Tour extends StatefulWidget {
  const Tour({super.key});

  @override
  State<Tour> createState() => _TourState();
}

class _TourState extends State<Tour> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController namaController = TextEditingController();
  TextEditingController jmlController = TextEditingController();
  TextEditingController tglController = TextEditingController();
  String _pilihTour = "";

  final List<String> Tours = [
    "Konoha",
    "Sunagakure",
    "Amegakure",
    "Kumogakure",
    "Iwagakure"
  ];
  void listState() {
    tglController.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(children: [
          Card(
            elevation: 4,
            margin: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              side: BorderSide(color: const Color.fromARGB(255, 255, 255, 255)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Pembelian Tiket Tour"),
                    SizedBox(height: 18),
                    TextFormField(
                      controller: namaController,
                      decoration: InputDecoration(
                        hintText: "Nama Lengkap",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Input Nama';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 18),
                    DropdownButtonFormField(
                      decoration: InputDecoration(
                          hintText: "Tour",
                          labelText: "Pilih Tour",
                          border: OutlineInputBorder()),
                      items: Tours.map((String items) {
                        int index = 0;
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _pilihTour = newValue!;
                        });
                      },
                    ),
                    SizedBox(height: 18),
                    TextFormField(
                      controller: jmlController,
                      cursorColor: Colors.blue,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "JumlahTiket",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Masukan Jumlah Tiket!';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 18),
                    TextFormField(
                      controller: tglController,
                      decoration: InputDecoration(
                        hintText: "Tanggal Booking",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Pilih Tanggal Bookung';
                        }
                        return null;
                      },
                      onTap: () async {
                        DateTime? pickeData = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                        );
                        if (pickeData != null) {
                          String tgl =
                              DateFormat('yyyy-MM-dd').format(pickeData);
                          setState(() {
                            tglController.text = tgl;
                          });
                        } else {
                          print("Tanggal Booking Tidak Di Pilih");
                        }
                      },
                    ),
                    SizedBox(height: 18),
                    SizedBox(
                      width: displayWidht(context) * 0.8,
                      height: displayHeight(context) * 0.075,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.white10),
                        ))),
                        child: Text("Simpan"),
                        onPressed: () {
                          _submit();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    ));
  }

  void _submit() {
  final isValid = _formKey.currentState!.validate();
  if (!isValid) {
    return;
  } else {
    _formKey.currentState!.save();

    String nama = namaController.text;
    String tgl = tglController.text;
    String jml = jmlController.text;
    String Tours = _pilihTour;

    int harga = 0;
    String img = "";

    if (Tours == "Konoha") {
      harga = 60000;
      img = "assets/img/kyubi.jpeg";
    } else if (Tours == "Kumogakure") {
      harga = 750000;
      img = "assets/img/gyuki.png";
    } else if (Tours == "Iwagakure") {
      harga = 50000;
      img = "assets/img/songoku.jpg";
    } else if (Tours == "Amegakure") {
      harga = 250000;
      img = "assets/img/sanbi.jpg";
    } else if (Tours == "Sunagakure") {
      harga = 44000;
      img = "assets/img/shukaku.jpeg";
    }

    int totalharga = harga * int.parse(jml);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TicketScreen(
          nama: nama,
          Tour: Tours,
          jml: jml,
          tgl: tgl,
          harga: harga.toString(),
          totalharga: totalharga.toString(),
          img: img,
        ),
      ),
    );
  }
}

}
