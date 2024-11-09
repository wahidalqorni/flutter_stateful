import 'package:flutter/material.dart';
import 'package:stateful_app/pages/result2_page.dart';
import 'package:stateful_app/pages/result_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // membuat key Validation untuk form
  final formKey = GlobalKey<FormState>();

  // buat variabel inputan
  TextEditingController nama = TextEditingController();
  TextEditingController noWA = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Registrasi"),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Form(
            key: formKey,
            child: ListView(
              children: [
                Text("Nama Lengkap"),
                TextFormField(
                  controller: nama,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Nama Lengkap Tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Text("Nomor WA"),
                TextFormField(
                  controller: noWA,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Nomor WA Tidak boleh kosong";
                    } else if(value.length < 10){
                      return "Input minimal 10 digit";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Text("Email"),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email Tidak boleh kosong";
                    } else if(!value.contains("@")) {
                      return "Email tidak valid";
                    }
                    return null;
                  },
                  controller: email,
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: (){
                    // memeriksa validation
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            // setelah validasi terpenuhi, navigasikan ke halaman lain dgn membawa data
                          //  Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(namaLengkap: nama.text, nomorWA: noWA.text, email: email.text)));

                          Navigator.push(context, MaterialPageRoute(builder: (context) => Result2Page(namaLengkap: nama.text, email: email.text, noWa: int.parse(noWA.text)) ));
                          }
                  },
                  child: Text("Kirim Data"),
                ),
              ],
            )),
      ),
    );
  }
}
