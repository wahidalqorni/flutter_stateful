import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage(
      {super.key,
      required this.namaLengkap,
      required this.nomorWA,
      required this.email});

  // variabel utk menerima data dari halaman yg mengirimkan data
  final String namaLengkap, nomorWA, email;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: ListView(
          children: [
            // menampilkan nilai pada widget
            Text("Nama Lengkap : ${widget.namaLengkap} "  ),
            Text("Nomor WA : ${widget.nomorWA} "  ),
            Text("Email : ${widget.email} "  ),
          ],
        ),
      ),
    );
  }
}
