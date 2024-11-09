class Validation {

  // buat fungsi untuk validasi field panjang
  validatePanjang(var value){
    if(value.isEmpty){
      return "Field Panjang Tidak boleh kosong";
    }
    return null;
  }

  validateLebar(var value) {
    if(value.isEmpty) {
      return "Field Lebar Tidak boleh kosong";
    }
    return null;
  }

}