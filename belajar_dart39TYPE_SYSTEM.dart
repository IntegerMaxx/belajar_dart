// TYPE INFERENCE
/*
* Apa itu type inference sebearnya??
* PENJELASAN: Type Inference seperti Analyzer sistem yang ada pada dart
* berfungsi untuk menentukan tipe data sesuai dengan dengan nilai
* yang kita berikan
* */


void main() {
  Fish fish = Shark(); // Shark termasuk ikan
  // Shark fish = Fish();  >> Tidak boleh, akan error. Karena semua ikan belum tentu shark

  Map<String, dynamic> company = {'name': 'Dicoding', 'yearsFounded': 2015}; // map secara explisit
  var company2 = {'name': 'Dicoding', 'yearsFounded': 2015}; // disini lah type inference bekerja. Dia akan secara otomatis mengetahui value dari map ini.


}

class Animal {}

/// Bird
class Bird implements Animal {}

class Dove implements Bird {}

class Duck implements Bird {}

/// Fish
class Fish implements Animal {}

class Shark implements Fish {}

class FlyingFish implements Fish {}