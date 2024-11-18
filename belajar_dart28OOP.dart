// INHERITANCE
import 'AnimalClass.dart';

class Cat extends Animal{
  final String furColor;

  Cat(String name, int age, double weight, String furColor)
      : this.furColor = furColor,
        super(name, age, weight);

  /*
  * PENJELASAN: pada kodingan diatas kita telah berhasil membuat constructor
  * pada subclass, penulisannya berbedad dengan yang di java. Keyword "super"
  * diatas akan mengarahkan name, age, weight ke dalam superClass. Sementara
  * "furColor" nilainya akan ditampung oleh class saat ini, yakni class "Cat".
  *
  * kita juga bisa meringkas kodingan diatas menjadi seperti dibawah ini
  * Cat(String name, int age, double weight, this.furColor) : super(name, age, weight);
  * jika kita ingin furColor di inisialisasikan melalui constructor
  * */

  void walk(){
    print("$name is walking");
  }
}

void main(){
  var catHello = Cat("Hello", 3, 0.9, "Orange");

  catHello.walk();
  catHello.eat();

  print(catHello.weight);
}