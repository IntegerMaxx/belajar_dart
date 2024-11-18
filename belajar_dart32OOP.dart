// MIXINS
/*
* Apa itu MIXINS sebenarnya??
* PENJELASAN: MIXINS itu kita bisa mencampur class-class dengan class yang ingin
* kita jadikan class utama. Untuk membuat class mixin, kita bisa menggunakan
* keyword "mixin". Lalu untuk memanggilnya pada class utama dengan menggunakan
* keyword "with". Class utama bisa mewarisi lebih dari 1 class mixin namun
* hanya bisa mewarisi satu class inheritance. MIXINS disini digunakan untuk
* menghindari masalah ambiguitas atau diamond problem dimana setiap
* class memiliki method yang namanya sama sehingga menyebabkan ambiguitas.
*
* Mixin digunakan untuk menggabungkan dan memanfaatkan property/method dari
* beberapa kelas lain
*
* */

void main() {
  var arielNoah = Musician();
  arielNoah.perform();
}

abstract class Performer {
  void perform();
}


mixin Singer implements Performer {
  @override
  void perform() {
    print('Singing');
  }
}

mixin Dancer implements Performer {
  @override
  void perform() {
    print('Dancing');
  }
}

class Musician extends Performer with Dancer, Singer { // Singing yang akan dieksekusi karna dia berada pada urutan terakhir dan spesifik
  void showTime() {
    perform();
  }
}

/*
* PENJELASAN: jadi pada kodingan diatas itu, kita telah berhasil membuat implementasi
* dari mixins. Mixins itu memiliki alokasi memory yang bertumpuk sehingga urutan
* paling terakhir itulah yang akan dianggap spesifik dan dieksekusi
*
* */

