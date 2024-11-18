// CLOSURE
/*
* Apa itu closure sebenarnya??
* PENJELASAN: cakupan pemanggilan variabel/method pada suatu
* scope, seperti scope suatu fungsi
* */


void main() {
  var closureExample = calculate(2);
  closureExample(); // lambda function
  closureExample();

  /*
  * PENJELASAN: pada kodingan diatas kita menyimpan fungsi
  * calculate pada suatu variabel sehingga dia menjadi
  * lambda function, maksudnya nama fungsi yang tadi sudah
  * tidak ada, yang ada sekarang hanya nama dari sebuah variabel.
  * Lambda function itu adalah fungsi yang tidak memiliki nama
  * */
}

Function calculate(base) {
  var count = 1;

  return  () => print("Value is ${base + count++}"); // lambda function

  /*
  * PENJELASAN: variabel "count" disini masih bisa dipanggil
  * pada fungsi lambda pada baris 24 diatas. Inilah yang disebut
  * dengan closure. Fungsi yang tidak memiliki nama disebut dengan
  * lambda function
  * */
}