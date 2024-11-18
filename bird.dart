import 'belajar_dart29OOP.dart';
import 'flyable.dart';

class Bird extends Animal implements Flyable{
  String featherColor;

  Bird(String name, int age, double weight, this.featherColor) : super(name, age, weight);

  @override
  void fly(){
    print('$name is flying');
  }

  /*
  * PENJELASAN: Maksud dari "@override" ini adalah kita menulis kembali method
  * yang sudah dibuat pada interface class yakni class flyable
  *
  * */

}

/*
* PENJELASAN: Pada class diatas kita berhasil membuat sebuah class yang mewarisi
* class Animal yang dimana kedua class ini dihubungkan oleh interfaces Flyable.
* Artinya sesuatu object animal yang abstrak dan dia bisa terbang, maka
* dia termasuk burung
* */