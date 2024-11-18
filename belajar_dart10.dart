// LATIHAN KONVERSI SUHU

import 'dart:io';

void main(){
  stdout.write("Masukkan suhu dalam Fahrenheit: ");
  var fahrenheit = num.parse(stdin.readLineSync()!);

  var celcius = (fahrenheit - 32) * 5 / 9;
  var reamur = 4 / 9 * (fahrenheit - 32);
  print('$fahrenheit derajat fahrenheit = $celcius derajat celcius');
  print('$fahrenheit derajat fahrenheit = $reamur derajat reamur');

  /*
  * PENJELASAN: pada kodingan diatas kita berasil membuat konversi suhu
  * sederhana dari fahrenheit ke celcius dan reamur
  *
  * */
}
