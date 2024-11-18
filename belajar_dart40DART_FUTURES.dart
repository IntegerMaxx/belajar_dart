// DART FUTURES
/*
* Apa itu dart futures sebenarnya??
* PENJELASAN: Future adalah sebuah objek yang mewakili nilai potensial atau
* kesalahan yang akan tersedia pada suatu waktu di masa mendatang
*
* Synchronous adalah kode program yang dijalankan secara berurutan/sekuensial
* dari atas sampai kebawah. Maksudnya, jika kita mempunyai dua baris kode,
* kode baris pertama akan dieksekusi terlebih dahulu, setelah selesai selanjutnya
* kode baris kedua yang akan dieksekusi. Baris kode yang kedua tidak dapat
* dieksekusi sebelum baris kode pertama selesai dieksekusi.
*
* Asynchronous adalah kode program yang dapat dieksekusi sambil menjalankan
* kode program lainnya. Misalnya terdapat dua baris kode, kita dapat mengeksekusi
* baris kode kedua sembari menunggu baris kode pertama selesai dilakukan.
* Asynchronous digunakan pada studi kasus yang dimana sebuah menthod membutuhkan
* waktu lama dalam merespon, misalnya mengambil data dari API, nah proses
* pengambilan data ini lama sehingga bisa menghambat proses yang lain. Dengan
* adanya Asynchronous kita bisa langsung ke baris kode selanjutnya sambil
* menunggu pengambilan data selesai dilakukan.
*
*
 async *
*
* */

void main() async{
  // print('Creating the future');
  // print('main() done');
  futureTest();
  String testAja = await getOrder();
  print(testAja);
}

void futureTest(){
  final myFuture = Future((){
    print('Creating the future');
    return 12;
  });
  print("futureTest() done");

  /*
  * PENJELASAN: "Creating the future" dieksekusi namun proses tetap
  * dilanjutkan pada "futureTest() done"
  *
  * */
}

// Uncompleted
Future<String> getOrder(){
  return Future.delayed(Duration(seconds: 3), (){
    return 'Coffee Boba';
  });
}

/*
* PENJELASAN: Pada fungsi diatas kita dengan secara eksplicit menentukan
* tipe kembalian pada method, sesuai nilai yang akan dikembalikan yakni
* string 'Future<String>'. Pada object "Future" terdapat fungsi 'delayed'
* yang digunakan untuk menunda waktu eksekusi.
* */