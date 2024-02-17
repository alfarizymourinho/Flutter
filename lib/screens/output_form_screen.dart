import 'package:flutter/material.dart';

class OutputformScreen extends StatelessWidget {
  final String nama, jk, tgl, agama;

  OutputformScreen({
    Key? key,
    required this.nama,
    required this.jk,
    required this.tgl,
    required this.agama,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Table(
        columnWidths: {
          0: FlexColumnWidth(1), // Nama
          1: FlexColumnWidth(1), // Jenis Kelamin
          2: FlexColumnWidth(1), // Tanggal Lahir
          3: FlexColumnWidth(1), // Agama
        },
        children: [
          buildTableRow("Nama", nama),
          buildTableRow("Jenis Kelamin", jk),
          buildTableRow("Tanggal Lahir", tgl),
          buildTableRow("Agama", agama),
        ],
      ),
    );
  }

  TableRow buildTableRow(String label, String value) {
    return TableRow(
      children: [
        TableCell(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        TableCell(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              value,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
