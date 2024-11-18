// HIGHER-ORDER FUNCTIONS
/*
* Apa itu higher-order function sebenarnya??
* PENJELASAN: itu adalah fungsi yang menggunakan fungsi lainya sebagai parameter.
* Jadi setiap kali kita memanggil fungsi high order ini, pada parameternya harus
* kita isi dengan sebuah fungsi
*
* */

void main(List<String> args) {

  // opsi 1
  int Function(int num1, int num2) sum = (int num1, int num2) => num1 * num2;
  myHigherOrderFunction('Test', sum); // sum disini adalah sebuah fungsi dalam variabel

  /*
  * PENJELASAN: pada kodingan diatas kita mendeklarasikan sebuah variabel "sum"
  * dengan type Function. Menerima 2 parameter dan juga kita sudah menspesifikasikan
  * type data yang akan dikembalikan oleh variabel ini, yakni "int". Kita juga
  * telah menetapkan sum sebagai anonymous function atau fungsi tanpa nama
  * menerima dua bilangan bulat dan mengembalikan hasil penjumlahan.
  * "myHigherOrderFunction('Hello', sum);" sum disini adalah function penjumlahan
  * yang telah kita buat diatas. jumlah parameter yang dapat diterima oleh
  * fungsi sum harus sesuai dengan jumlah parameter yang ada pada fungsi
  * "myHigherOrderFunction()" agar dia bisa dieksekusi
  *
  * */

  // opsi 2
  myHigherOrderFunction('Hello', (num1, num2) => num1 + num2);

  /*
  * PENJELASAN: jadi setiap kali kita memanggil fungsi "myHigherOrderFunction()"
  * setiap parameter yang menerima fungsi, harus kita isi dengan fungsi. Namun
  * pada praktik disini kita menggunakan fungsi yang bisa mengembalikan nilai
  * */
}

void myHigherOrderFunction(String message, int Function(int num1, int num2) myFunction,){ // disini kita membuat funsi dalam sebuah parameter
  print(message);
  print(myFunction(3, 4));
}