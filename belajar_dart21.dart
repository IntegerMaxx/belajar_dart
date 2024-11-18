// LIST
// Apa itu list sebenarnya??
/* ANSWER: list sebenarnya seperti array pada bahasa pemrograman lainnya,
*  namun dia spesial, karena dia bisa statis bisa juga dynamic,
*  kita juga bisa menyimpannya pada sebuah variabel dengan keyword var.
*
*/
// List<int> numberList = [1,2,3,4,5];

void main(){
  List<int> numberList = [1,2,3,4,5]; // statis
  List dynamicType = [1, 'Hello', true]; // dynamic,
  var stringList = ['Hello', 'Dicoding', 'Dart']; // statis
  print(numberList.runtimeType);
  print(stringList.runtimeType);
  print(dynamicType.runtimeType);

  print("\n${dynamicType[1]}\n");
  // print(dynamicType[3]); // ini akan error karena list yang ingin kita akses sudah keluar dari indeks

  callStringList();

  print("\n");
  spreadOperator();

  print("\n");
  listNilaiNull(); // ini list null safety
}


void callStringList(){
  List<String> callStringList = ["Hello", "World", "!"];
  callStringList.add('Flutter');
  for(int i = 0; i < callStringList.length; ++i){
    print(callStringList[i]);
  }

  print('\n');
  callStringList.forEach((i) => print(i)); // ini fungsi lamda
  print(callStringList);

  print('\n');
  callStringList.insert(0, 'test'); // ini memasukkan, artinya indeks dari list bertambah
  print(callStringList);

  callStringList[0] = "Terserah"; // ini untuk mengubah nilai
  print(callStringList);

  callStringList.remove('Terserah'); // ini untuk menghapus nilai pada list secara spesifik
  print(callStringList);

  // Menghapus list pada index ke-1
  callStringList.removeAt(1);
  print(callStringList);

  // Menghapus data list terakhir
  callStringList.removeLast();
  print(callStringList);

  // Menghapus list mulai index ke-0 sampai ke-1 (indeks 1 masih dipertahankan)
  callStringList.removeRange(0,1);
  print(callStringList);

}

void spreadOperator(){
  var favorites = ['Seafood', 'Salad', 'Nugget', 'Soup'];
  var others = ['Cake', 'Pie', 'Donut'];
  var allFavorites = [favorites, others]; // ini belum bergabung listnya
  print(allFavorites);

  var allFavoritesSO = [...favorites, ...others]; // ini spread operator
  print(allFavoritesSO);
  /*
  * PENJELASAN: jadi spread operator itu kita menggabungkan beberapa list
  * menjadi list baru dengan keyword tiga titik "..." itulah yang disebut
  * spread operator
  * */
}

void listNilaiNull(){
  List<dynamic>? list;
  List<dynamic>? list2 = [0, ...?list];
  print(list2);

  /*
  * PENJELASAN: untuk mengatasi nilai null pada list kita bisa menambahkan
  * tanda tanya pada akhiran sintaks dynamic. Jadi listnya menjadi list
  * null safety. Maksud dari <dynamic> disini adalah tipe data yang fleksibel
  * atau bisa berubah-ubah tergantung dari nilai yang kita inputkan
  * */
}
