// STRING INTERPOLATION
import 'package:belajar_dart/belajar_dart6.dart' as dart6;

void main(){
  /*
  * PENJELASAN: jadi untuk mencetak dolar tanpa menggunakan string interpolation
  * kita bisa menggunakan backslash atau dengan menggunakan 'r' pada baris 8,
  * 'r' disini memiliki arti raw yang akan mengabaikan interpolation dalam string
  * */
  var name = "Messi";
  print('Hello $name, nice to meet you.');
  print('1 + 1 = ${1 + 1}');
  print('Dia baru saja membeli komputer seharga \$1,000.00');
  print(r'Dia baru saja membeli komputer seharga $1,000.00');

  /*
  * PENJELASAN: kita bisa menggunakan dart unicode sebagai referensi untuk membuat
  * sebuah emoji
  * */
  print('\n${dart6.uniCode()}');

}

// DART UNICODE ATAU RUNES
String uniCode(){
  return 'Hi \u2665';
}