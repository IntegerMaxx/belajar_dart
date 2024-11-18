// MENERIMA INPUT PENGGUNA

import 'dart:io';

void main(){
  String nama;
  int age;

  stdout.write("Nama Anda: ");
  nama = stdin.readLineSync()!;
  stdout.write("Usia Anda: ");
  age = int.parse(stdin.readLineSync()!);
  print('Halo $nama, usia Anda $age tahun');
  print(age.runtimeType);

  /*
  PENJELASAN
  maksud dari tanda "!" pada 'stdin.readLineSync()' adalah untuk menandai bahwa
  nilai dari variabel tidak boleh kosong atau null. 'stdin.readLineSync()' hanya
  menerima nilai String
  */
}
