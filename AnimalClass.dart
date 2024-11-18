/*
* PENJELASAN: jadi penamaan class di dalam dart itu tidak harus sama dengan
* nama dari filenya
* */

class Animal{
  String _name = '';
  int _age = 0;
  double _weight = 0;

  Animal(this._name, this._age, this._weight); // ini constructor

  void eat(){
    print('$_name is eating');
    _weight = _weight + 0.2;
  }

  void sleep(){
    print('$_name is sleeping');
  }

  void poop(){
    print('$_name is pooping');
    _weight = _weight - 0.1;
  }

  double getWeight(){
    return _weight;
  }

  // GETTER
  int get age => _age;
  double get weight => _weight;
  String get name => _name;

  /*
  * PENJELASAN: untuk membuat getter di dalam dart kita cukup menuliskan seperti
  * pada baris 32 diatas. Di intellij idea caranya adalah pertama, klik varible
  * private dan tekan tombol alt + insert, kedua pilih getter, ketiga pilih
  * variabel private yang ingin dijadikan getter. Kita juga bisa melakukannya
  * secara manual dengan menambahkan keyword "get" pada method yang ingin
  * dijadikan sebagai getter
  * */

  // SETTER
  set name(String value) {
    _name = value;
  }

/*
  * PENJELASAN: untuk membuat setter di dalam dart kita cukup menuliskan seperti
  * pada baris 44 diatas. Di intellij idea caranya adalah pertama, klik variable
  * private dan tekan tombol alt + insert, kedua pilih setter, ketiga pilih
  * variabel private yang ingin dijadikan setter. Kita juga bisa melakukannya
  * secara manual dengan menambahkan keyword "set" pada method yang ingin
  * dijadikan sebagai setter
  * */
}