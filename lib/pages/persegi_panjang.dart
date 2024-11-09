import 'package:flutter/material.dart';
import 'package:stateful_app/src/mixins/validation.dart';

class PersegiPanjang extends StatefulWidget {
  const PersegiPanjang({super.key});

  @override
  State<PersegiPanjang> createState() => _PersegiPanjangState();
}

class _PersegiPanjangState extends State<PersegiPanjang> {
 // membuat key Validation untuk form
  final formKey  = GlobalKey<FormState>();

  // buat variabel luas
  num luas = 0;

  // buat variabel untuk menampung inputan dari setiap textformfield
  TextEditingController panjang = TextEditingController();
  TextEditingController lebar = TextEditingController();

  // buat fungsi utk menghitung luas
  void hitungLuas() {
    setState(() {
      // num.parse() => berfungsi untuk menkonvert tipe data String menjadi num

      // ubah nilai variabel luas yg tadinya 0 menjadi perhitungan panjang * lebar
      luas = num.parse(panjang.text) * num.parse(lebar.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Luas Persegi Panjang"),
        backgroundColor: Colors.brown,
      ),
      body: Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: ListView(
            children: [
              Text("Mencari Luas Persegi Panjang"),
              SizedBox(
                height: 10,
              ),
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: panjang,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Field Panjang Tidak boleh kosong";
                          } 
                          return null;
                        },
                        // onSaved: (newValue) {
                        //   panjang = newValue as TextEditingController;
                        // },
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(hintText: "Input nilai panjang"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Field Lebar Tidak boleh kosong";
                          }
                          return null;
                        },
                        // onSaved: (newValue) {
                        //   lebar = newValue as TextEditingController;
                        // },
                        controller: lebar,
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(hintText: "Input nilai lebar"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () {
                          // memeriksa validation
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            // setelah validasi terpenuhi, panggil fungsi hitungLuas()
                            hitungLuas();
                          }

                          
                        },
                        child: Text("Hitung"),
                      ),
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Text("Hasil : ${luas} "),
            ],
          )),
    );
  }
}
