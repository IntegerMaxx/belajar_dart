// OPERATOR PERBANDINGAN

void main() {
  /*
  * PENJELASAN:
  * Operator Perbandingan: '==', '!=', '>', '<', '>=', '<=';
  * Operator Logika: '&&', '||', '!'
  * */

  if (2 <= 3) {
    print('Ya, 2 kurang dari sama dengan 3');
  } else {
    print("Anda salah");
  }

  testOperator();
}

void testOperator() {
  if (2 < 3 && 3 + 2 == 5) {
    print('Untuk mencetak ini semua kondisi harus benar');
  } else {
    print('2 kurang dari 3, tapi 2 + 4 tidak sama dengan 5, maka ini akan tampil');
  }

  if (false || false || false) {
    print('Ada satu nilai true');
  } else {
    print('Jika semuanya false, maka ini akan tampil');
  }
}