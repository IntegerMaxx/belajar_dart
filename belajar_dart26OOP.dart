// CONSTRUCTOR
/*
*  1. Constructor memiliki nama yang sama dengan nama kelas.
*  2. Constructor tidak memiliki nilai kembalian (return type).
*  3. Constructor akan secara otomatis dipanggil ketika sebuah objek dibuat.
*  4. Jika kita tidak mendefinisikan constructor, default constructor tanpa argumen akan dibuat.
*
* */

class Animal{
  String name = '';
  int age = 0;
  double weight = 0;

  // Mendeklarasikan Constructor
  // Animal(String name, int age, double weight){
  //   this.name = name;
  //   this.age = age;
  //   this.weight = weight;
  // }

  // atau dengan cara berikut
  // Animal(this.name, this.age, this.weight);

  // Berikut beberapa contoh untuk mendeklarasikan
  // Named Constructor.
  // Animal.name(this.name);
  // Animal.age(this.age);
  // Animal.weight(this.weight);

  Animal.cat(this.name, this.weight) : age = 2 {
    print("Hello World");
  }

  /*
  * PENJELASAN: pada kodingan diatas ini kita telah berhasil membuat constructor
  * Initializer list. Sehingga kita bisa membuat constructor secara spesifik
  * pada object tertentu dengan nilai default. Maksud dari ": age = 2" adalah
  * kita memasukkan nilai default ke property "age".
  * */
}

void main(){
  var kucing = Animal.cat('wouw', 0.1,);
  print(kucing.age);

}