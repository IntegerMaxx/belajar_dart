// NULL SAFETY
/*
* Nilai null bisa menyebabkan suatu program mengalami kesalahan yang
* dikenal dengan Null Pointer Exception (NPE). Bahkan, developer yang
* pertama kali mengenalkan NPE menyebutnya sebagai
* “the billion dollar mistake”.
*
* */

void main(){
  // int age = null; // ini akan menyebabkan error
  String? favoriteFood = null;
  double? test = null;
  String? favoriteFood2 = "Mie Ayam";
  dynamic? hello = "Menjadi manusia"; // nilai bisa berubah-ubah

  buyAMeal(favoriteFood);
  buyAMeal(favoriteFood2!); // disematkan bang operator supaya mengembalikan nilai non-null
  /*
  * PENJELASAN: pada kodingan diatas variabel tanpa tanda "?" yang secara
  * eksplisit mendeklarasikan tipe datanya akan menyebabkan error, karena
  * dalam dart nilai null adalah suatu kesalahan atau Null Pointer Exception (NPE).
  * Untuk mengetasinya kita bisa menggunakan null safty dengan penggunaan tanda
  * tanya "?" pada type datanya. Namun tanda "?" tidak dapat digunakan pada
  * variabel yang di deklariskan dengan kata kunci "var".
  *
  * Bang Operator "!" akan memastikan variabel favoriteFood2 tidak memiliki
  * nilai null, jika bernilai null maka akan terjadi crash. bang operator ini
  * hanya ketika Anda yakin 100% bahwa variabel tersebut tidak akan bernilai null.
  * */
}


// INI AKAN ERROR
// void buyAMeal(String favoriteFood){
//   print("I bought a $favoriteFood");
// }

// INI BARU BENER
void buyAMeal(String? favoriteFood){
  print("I bought a $favoriteFood");
}