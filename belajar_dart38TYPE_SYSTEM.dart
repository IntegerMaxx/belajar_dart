// TYPE SYSTEM/SOUND TYPE SYSTEM
/*
* Apa itu type system sebenarnya??
* PENJELASAN: Type System itu seperti system yang dibuat oleh dart yang
* melekat pada variabel, fungsi ataupun object lainnya agar tidak terjadi
* compile-time error. Misalnya saat kita menetapkan String ke Int, maka
* secara otomatis hal ini akan menybabkan error. Type sistem memberikan
* standar tersirat pada programmer untuk tipe data atau struktur lainnya.
*
* Soundness ini berarti program Anda tidak akan pernah bisa memasuki
* keadaan di mana sebuah ekspresi mengevaluasi nilai yang tidak cocok dengan
* jenis tipenya.
* */


// GENERIC

void main(List<String> args){
  List<int> numberList=[1, 2, 3, 4, 5];
  print(numberList);

  /*
  * PENJELASAN: Sebenarnya tipe dari list adalah List<E>. Tanda <...> menunjukan
  * bahwa list adalah tipe generic. yang menerima parameter
  *
  * Secara umum generic merupakan konsep yang digunakan untuk menentukan tipe
  * data yang akan kita gunakan. Kita bisa mengganti tipe parameter generic
  * pada Dart dengan tipe yang lebih spesifik dengan menentukan instance dari
  * tipe tersebut.
  * */

  List<String> stringList = ['Dart', 'Flutter', 'Android', 'iOS']; // ini spesifik/static
  List dynamicList = [1, 2, 3, 'Empat']; // ini dinamis

  // Membuat instance MemoryCache dengan tipe String
  var cache = MemoryCache<String>();

  // Menggunakan metode setByKey untuk menambahkan data
  cache.setByKey("username", "user123");
  cache.setByKey("email", "user@example.com");

  // Menggunakan metode getByKey untuk mengambil data
  String username = cache.getByKey("username");
  String email = cache.getByKey("email");

  // Menampilkan data yang diambil dari cache
  print("Username: $username");
  print("Email: $email");

  List<Bird> birdList = [Bird(), Dove(), Duck()];

  /*
  * PENJELASAN: Pada kodingaan diatas kita telah menyimpan object "Bird(), Dove(), Duck()",
  * pada sebuah List yang mengharuskan kita untuk memberikan tipe parameter "Bird" agar
  * object-object tadi dapat diterima oleh list. Namun jika kita menambahkan object Animal()
  * maka dia akan error karena Animal belum tentu Bird
  * */


}

abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

/*
* PENJELASAN: Pada kodingan diatas kita membuat abstract class yang dimana abstract
* class diatas hanya dapat diakses oleh cetak biru class lain. "<T>" adalah type
* generic parameter. Namun kita bisa menggunakan huruf lain seperti E, T, K atau V.
* Maksud dari "T getByKey(String key);" adalah kita mengambil nilai berupa string,
* kemudian mengembalikan nilai bertipe T Karena ini metode abstract, maka kita
* harus menyediakan class untuk mengimplementasikan "T getByKey(String key);".
*
* "void setByKey(String key, T value);" metode ini juga membutuhkan implementasi
* dalam penerapannya. Maksud dari "T value" adalah kita menerima nilai value
* bertipe T. Dibawah ini adalah contoh implementasi dari class abstract.
*
* */

class MemoryCache<T> extends Cache<T> {
  final Map<String, T> _cache = {};

  @override
  T getByKey(String key) {
    return _cache[key]!; // ini penerapan nullable. Maksudnya nilai null di izinkan
  }

  @override
  void setByKey(String key, T value) {
    _cache[key] = value;
  }
}

class Animal {}

class Bird implements Animal {}

class Dove implements Bird {}

class Duck implements Bird {}