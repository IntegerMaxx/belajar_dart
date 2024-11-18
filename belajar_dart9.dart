import 'package:belajar_dart/belajar_dart9.dart' as belajar_dart9;

// ECEPTION

void main(){
  // var a = 7;
  // var b = 0;
  // print(a ~/ b);

  print("Ini tidak akan dieksekusi"); // jika kodingan diatas diaktifkan

  /*
  * PENJELASAN: Di Dart, operator ~/ disebut sebagai integer division operator.
  * Operator ini melakukan pembagian seperti operator /, tetapi hasilnya selalu
  * berupa bilangan bulat dengan cara membulatkan hasil pembagian ke bawah
  * (floor division).
  *
  * Kode diatas akan menghasilkan "IntegerDivisionByZeroException" yang
  * mengindikasikan nilai 7 tidak bisa dibahagi dengan nilai 0. Sebagai
  * solusinya kita akan menggunakan Exeption Handling. Kode diatas akan langsung
  * terhenti jika tidak menggunakan exeption handling.
  *
  * Dengan membuat exeption handling kode program akan tetap berjalan
  * */

  testExeptionHandling();
  testExeptionHandling2();
  stackTraceExpHan();
  finallyExpHan();
}

void testExeptionHandling(){
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } on Exception {
    print('Can not divide by zero.');
  }

  print("Hello world"); // ini akan dieksekusi jika terjadi exeption.
                        // Karna kita sudah menaruhnya pada blok kode try.
}

void testExeptionHandling2(){
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch (e) {
    print('Exception happened: $e');
  } on Exception {
    print("Hello world, ini tidak boleh brow"); // kalau catch tidak bisa mengeksekusi
    // maka blok kode ini yang akan dieksekusi
  }
}

void stackTraceExpHan(){
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch (e, s) {
    print('Exception happened: $e');
    print('Stack trace: $s');
  }

  /*
  * PENJELASAN: dengan stack trace kita bisa mengetahui baris dan kolom berapa
  * yang terjadi kesalahan
  * */
}

void finallyExpHan(){
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } catch (e, s) {
    print('Exception happened: $e');
    print('Stack trace: $s');
  } finally {
    print('Ini akan tetap dijalankan brow');
  }

  /*
  * PENJELASAN: dengan finally code yang ada di dalam blok finally akan tetap
  * dijalankan walupun terjadi exption. Dia tidak akan memberikan pesan exeption.
  * Dia tidak pedulu apapun yang terjadi blok kode try dan catch
  * */
}
