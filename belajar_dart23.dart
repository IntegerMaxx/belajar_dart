// MAP
/*
* Apa itu MAP sebenarnya??
* Map itu seperti tipe data collection lainnya, namun tidak terdapat indeks.
* Map juga bisa dynamic dan statis tergantung bagaiaman kita menuliskannya.
* di map itu tidak terdapat indeks, kita harus menyebutkan key dari map untuk
* menampilkan value, namun kita bisa menggunakan fungsi tambahan yakni
* "entries.toList()[5]" fungsi ini akan mengubah Map menjadi list dan mengambil
* data indeksnya disini saya mengambil indeks ke 5
* */

void main(){
  var capital = {
    'Jakarta' : 'Indonesia',
    'London' : 'England',
    'Tokyo' : 'Japan'
  };

  print(capital['Jakarta']);
  mapKey();
  addMapValue();
  mapDynamicTest();


}

void mapKey(){
  var capital = {
    'Jakarta' : 'Indonesia',
    'London' : 'England',
    'Tokyo' : 'Japan'
  };

  var mapKeys = capital.keys; // ini untuk mengambil keys dari capital, yakni 'Jakarta', 'London', 'Toyko'
  print("Map Keys dari capital adalah : $mapKeys");

  var mapValues = capital.values; // // ini untuk mengambil value dari capital, yakni 'Indonesia', 'England', 'Japan'
  print("Map Values dari capital adalah : $mapValues");
}

void addMapValue(){
  var capital = {
    'Jakarta' : 'Indonesia',
    'London' : 'England',
    'Tokyo' : 'Japan'
  };

  capital['New Delhi'] = 'India';
  print(capital);

  /*
  * PENJELASAN: pada kodingan baris 41, kita menambah data pada varibel capital,
  * kurung siku itu dimaksudkan untuk key-nya sementara = 'India' itu dimaksudkan
  * untuk value-nya
  * */
}

void mapDynamicTest(){
  String dosa = "ada banyak";
  Map<String, dynamic> test = {
    'nama' : 'Sunarto',
    'umur' : 20,
    'menikah' : false,
    'tinggi' : 168.9,
    'Jodoh' : null,
    'Dosa' : '$dosa',
  };

  print(test.entries.toList()[5]);
  print(test);

  /*
  * PENJELASAN: jadi map juga bisa menjadi dynamic dengan menambahkan sintaks
  * "<dynamic, dynamic>" kenapa harus dua?? karna map adalah key-value. Namun
  * kita bisa membuatnya menjadi satis dengan mengspesifikasikan sintaksnya
  * seperti <String, int> berarti key-nya harus bertipe data string dan valuenya
  * harus bertipe data integer.
  * */
}