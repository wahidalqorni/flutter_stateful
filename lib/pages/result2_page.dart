import 'package:flutter/material.dart';

class Result2Page extends StatelessWidget {
  const Result2Page({super.key, required this.namaLengkap, required this.email, required this.noWa});

  // buat variabel utk menerima data dari halaman pengirim
  final String namaLengkap, email;
  final int noWa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: ListView(
          children: [
            Text("Nama Lengkap : ${namaLengkap} "),
            Text("No WA : " + noWa.toString() ),
            Text("Nomor WA : ${noWa} "),
            Text("Email" + email ),
          ],
        ),
      ),
    );
  }
}