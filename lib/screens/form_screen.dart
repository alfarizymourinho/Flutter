import 'package:flutter/material.dart';
import 'package:flutter_paris/helpers/size_helper.dart';
import 'package:flutter_paris/screens/output_form_screen.dart';
import 'package:intl/intl.dart';

class BelajarForm extends StatefulWidget {
  const BelajarForm({super.key});

  @override
  State<BelajarForm> createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController namaController = TextEditingController();
  TextEditingController jkController = TextEditingController();
  TextEditingController tglController = TextEditingController();
  String _pilihAgama = "";

  final List<String> agama = ["Islam", "Protestan", "Katolik", "Budha"];
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
              side: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Formulir Biodata"),
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
                    TextFormField(
                      controller: jkController,
                      decoration: InputDecoration(
                        hintText: "Jenis Kelamin",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Input Jenis Kelamin';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 18),
                    TextFormField(
                      controller: tglController,
                      decoration: InputDecoration(
                        hintText: "Tanggal Lahir",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Input Tanggal Lahir';
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
                          print("Tanggal Tidak Di Pilih");
                        }
                      },
                    ),
                    SizedBox(height: 18),
                    DropdownButtonFormField(
                      decoration: InputDecoration(
                          hintText: "Agama",
                          labelText: "Pilih Agama",
                          border: OutlineInputBorder()),
                      items: agama.map((String items) {
                        int index = 0;
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _pilihAgama = newValue!;
                        });
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
      String jk = jkController.text;
      String agama = _pilihAgama;
      String tgl = tglController.text;
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                OutputformScreen(nama: nama, jk: jk, tgl: tgl, agama: agama),
          ));
    }
  }
}
