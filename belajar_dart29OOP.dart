// ABSTRACT CLASS
/*
* PENJELASAN: abstract merupakan gambaran umum dari sebuah kelas. Ia tidak
* dapat direalisasikan dalam sebuah objek. Pada modul sebelumnya kita sudah
* mempunyai kelas Animal. Secara harfiah hewan merupakan sebuah sifat. Kita
* tidak tahu bagaimana objek hewan tersebut. Kita bisa melihat bentuk kucing,
* ikan, dan burung namun tidak untuk hewan. Maka dari itu konsep abstract class
* perlu diterapkan agar kelas Animal tidak dapat direalisasikan dalam bentuk
* objek namun tetap dapat menurunkan sifatnya kepada kelas turunannya.
* */

abstract class Animal {
  String? name = '';
  int? age = 0;
  double? weight = 0;

  Animal([this.name, this.age, this.weight]); // constructor ini menggunakan null safty

  void eat(){
    print("$name is eating");
  }
}

void main(){
  // var helloCat = Animal('Garong', 21, 3); // ini akan error karna dia abstract class
  // output: Error: The class 'Animal' is abstract and can't be instantiated.

  var helloCat = Cat('Hello', 20, 0.9);
  print(helloCat.name);

  /*
  * PENJELASAN: jadi abstract class itu hanya bisa digunakan oleh kelas turunan
  * atau subclass. Pada kodingan diatas kita tidak bisa meng-inisialisasikan
  * class Animal menjadi sebuah objek. Sementara, jika meng-inisialisasikan
  * object dari kelas turunannya, yakni "Cat" yang diturunkan dari class "Animal"
  * maka dia tidak akan error.
  *
  * Kelas abstrak di Dart adalah kelas yang tidak dapat diinstansiasi secara
  * langsung, tetapi berfungsi sebagai cetak biru untuk kelas lain mewarisinya
  *
  * */


}

class Cat extends Animal{

  Cat(String name, int age, double weight) : super(name, age, weight);

}


























