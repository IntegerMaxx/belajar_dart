// FUTURE DENGAN ASYNC-AWAIT


void main() async {
  print('Getting your order...');
  var order = await getOrder();
  print('You order: $order');
}

/*
* PENJELASAN: pada kodingan diatas method main harus ditambahkan keyword
* 'async' pada body codenya dan menambahkan keyword 'await' pada method
* yang ingin kita ambil nilai kembali. Dengan menambahkan keyword 'async'
* pada method main kita dengan secara eksplicit mendefinisikan method main
* sebagai method Asyncronous
* */

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Coffee Boba';
  });
}