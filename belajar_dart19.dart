// BREAK DAN CONTINUE

void main() {
  // bilangan prima di bawah 100
  var primeNumbers = [
    2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 73, 79, 83, 89, 97
  ];

  var searchNumber = 13;
  print('Bilangan prima di antara 1-100: $searchNumber');

  for (int i = 0; i < primeNumbers.length; i++) {
    if (searchNumber == primeNumbers[i]) {
      print('$searchNumber adalah bilangan prima ke-${i + 1}');
      break;
    }
    print('$searchNumber != ${primeNumbers[i]}');
  }

  iniContinue();
}

/*
* PENJELASAN: pada kodingan diatas, kita berusaha mencari bilangan prima 13
* pada rentang bilangan 1 sampai 100. For disini digunakan untuk melakukan
* looping pada array dan jika sudah sampai pada looping yang tepat yakni indeks
* ke-5 maka looping akan berhenti, hanya saja kita menuliskannya ${i + 1} agar
* bisa dihitung secara umum. Yang menyebabkannya berhenti adalah break keyword
* */

void iniContinue(){
  for (int i = 1; i <= 10; i++) {
    if (i % 3 == 0) {
      continue;
    }
    print(i);
  }

  /*
  * PENJELASAN: Maksudnya kalau ada continue maka print akan dilewati dan
  * dilanjutkan pada perulangan selanjutnya
  * */
}
