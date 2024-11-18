// COMPLETED WITH DATA

void main() {
  getOrder().then((value) {
    print('Your ordered: $value');
  });
  print('Getting your order...');
}

/*
* PENJELASAN: Pada kodingan diatas kita memanggil sebuah fungsi "getOrder()"
* yang sudah kita definisikan sebelumnya. Yang dimana fungsi ini membawa
* fungsi bawaan yakni "then()" fungsi ini menerima nilai masukan yang di
* keluarkan oleh "getOrder()". Lalu dia dieksekusi sambil menjalan perintah
* selanjutnya. Dia akan muncul setelah 3 detik
*
* */

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Coffee Boba';
  });
}