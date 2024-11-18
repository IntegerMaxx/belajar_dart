// SET
/*
* APA ITU SET SEBENARNYA??
* ANSWER: jadi set seperti array, namun dia bisa menyimpan campuran data
* menggunakan <dynamic>. Untuk penulisannya kita harus menggunakan
* kurung siku []. Set itu menyimpan data secara unik dan tidak terdapat duplikasi
* */

void main(){
  Set<int> anotherSet = new Set.from([1,4,6,4,1]); // kita membuat set dari list []

  print(anotherSet);
  addDataToSet();
  removeDataSet();

  print(setDinamicTest());
  showIndeks();

  print("\n");
  gabungSet();
}

void addDataToSet(){
  var numberSet = {1,4,6};

  // Menambah data ke dalam Set
  numberSet.add(7); // Menambah satu angka
  numberSet.addAll({2,2,3}); // Menambah banyak angka

  print(numberSet);
}

void removeDataSet(){
  var numberSet = {1, 4, 6, 2, 3};

  // Menghapus nilai 3 dari Set.
  numberSet.remove(3); // angka 3 terhapus, bukan indeksnya
  print(numberSet);
}

Set setDinamicTest(){
  Set<dynamic> hello = {true, "terserah", 1, 0.1};
  return hello;
}

void showIndeks(){
  var numberSet = {1,4,6,2,3};
  // Mendapatkan data Set pada indeks ke-2
  print(numberSet.elementAt(2)); // kita mengambil nilai pada indeks ke-2
}

void gabungSet(){
  var setA = {1,2,3,4,5};
  var setB = {1,5,7};

  var union = setA.union(setB);
  var intersection =  setA.intersection(setB);
  
  print("union: $union");
  print("intersection: $intersection");


  /*
  * PENJELASAN: jadi maksud dari "setA.union(setB);" adalah kita menggabungkan
  * setA dengan setB dan angka yang sudah ada pada setA, kemudian juga ada pada
  * setB akan dihapus. Maksud dari "setA.intersection(setB);" disini adalah
  * element yang muncul pada setA kemudian muncul juga pada setB dia akan disimpan,
  * kemudian yang lainnya akan dihapus.
  * */

}