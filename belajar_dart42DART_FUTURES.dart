// COMPLETED WITH ERROR

void main() {
  getOrder().then((value) {
    print('Your ordered: $value');
  }).catchError((error) {
    print('Sorry. $error');
  });
  print('Getting your order...');
  var firstString = 'Dart';
  var secondString;
  secondString = 12;
  secondString = 'hello';
  print(firstString + secondString);

  var i = 3;
  while (i > 0){
    print(i);
    i--;
  }
  print("Completed");
}

/*
* PENJELAN: jadi pada kodingan diatas kita menggunakan catchError() yang dimana
* dia digunakan untuk handling error pada Future dengan menambahkan
* eksplesi if else dan sebuah keyword throw pada else.
* */

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    var isStockAvailable = false;
    if (isStockAvailable) {
      return 'Coffee Boba';
    } else {
      throw 'Our stock is not enough.';
    }
  });
}

/*
* PENJELASAN: ada 3 state pada Object Future. 3 itu dibawah ini
* 1. Fungsi getOrder() yang berisi Future yang masih uncompleted.
* 2. Method then() yang menangani kondisi completed with data.
* 3. Method catchError() yang menangani kondisi completed with error.
* */