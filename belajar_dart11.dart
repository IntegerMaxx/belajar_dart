// FUNCTION


void main(){
  greet();
  greet2("Sunarto", 2004);
  greet3();
  greetNewUser("Sunarto");
  greetNewUser2(isVerified1: true);

  print("\n====PEMBATAS====\n");

  var firstNumber = 7;
  var secondNumber = 10;
  print("Rata-rata $firstNumber & $secondNumber adalah ${average(firstNumber, secondNumber)}");
}

void greet(){
  print("Hello!");
}

// ARROW SINTAKS
void greet3() => print("Hello! ini greet3");

/*
* PENJELASAN: jadi jika pada fungsi hanya menampilkan satu baris saja maka kita
* bisa menggunakan arrow sintaks. Contohnya seperti pada function greet3()
* */

// FUNCTION PARAMETER
void greet2(String name, int bornYear){
  var age = 2024 - bornYear;
  print('Halo $name! Tahun ini Anda berusia $age tahun');
}

// FUNCTION RETURN
double average(num num1, num num2){
  return (num1 + num2) / 2 ;
}

// POSITIONAL OPTIONAL PARAMETER
void greetNewUser([String? name, int? age, bool? isVerified1]){
  print("$name $age $isVerified1");
}

/*
* PENJELASAN: pada kodingan diatas fungsi greetNewUser() adalah sebuah fungsi
* dengan optional parameter, namun kita harus menggunakan tanda "?" pada
* data typenya sebagai null safety, jika tidak menggunakannya maka akan
* menyebabkan error. Jika kita tidak memiliki nilai yang akan di isi pada
* parameternya kita bisa menggunakan null atau bahkan kita tidak perlu mengisi
* paramterya. Dia tetap static dia akan error jika kita menulisnya
* "greetNewUser(20);", karena 20 adalah parameter int yang kedua, sementara
* parameter yang pertama adalah string
* */

// NAMED OPTIONAL PARAMETERS
void greetNewUser2({String? name, int? age, bool? isVerified1}){
  print("$name $age $isVerified1");
}

/*
* PENJELASAN: dengan "NAMED OPTIONAL PARAMETERS" kita bisa menggunakan
* prosedural itu walaupun posisi parameternya berbeda-beda. Caranya adalah
* dengan menyebutkan setiap parameter beserta nilainya , contoh implementasinya
* "greetNewUser2(age: 20);" dan akan mengasilkan "null, 20, null"
* */

