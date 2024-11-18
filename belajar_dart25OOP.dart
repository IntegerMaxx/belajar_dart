// PROPERTIES DAN METHOD
// PROPERTIES itu seperti varibale yang ada pada sebuah class
// METHOD itu seperti function yang ada padas ebuah kelas
import 'AnimalClass.dart';

void main(){
  var helloCat = Animal("Hello", 2, 4);

  helloCat.eat();
  helloCat.poop();

  // print(helloCat._weight); // ini akan error
}




/*
* PENJELASAN: Dart tidak memiliki keyword visibility modifier seperti private
* atau public, jadi dia tidak bisa melakukan encapsulasi seperti pada bahasa
* pemrograman lain pada umumnya. Cara untuk mengatasinya adalah dengan
* menjadikan class sebagai library sehingga Anda harus membuat satu file dart
* lagi dan mengimportnya ke file lain. Agar bisa private anda cukup memberikan
* tanda garis bawah pada nama variabelnya "_" seperti "double _weight = 0;"
* */
