// CASCADE NOTATION

import 'AnimalClass.dart';

void main(){
  var helloCat = Animal('', 2, 4.2)
  ..name = 'Gray'
  ..eat(); // ini cascade notation

  /*
  * PENJELASAN: Pada kodingan diatas kita telah berhasil membuat
  * Cascade Notation. Cascade Notation itu kita menambahkan titik 2 ".."
  * pada nama property begitupun pada nama menthod. Ini sama saja kita
  * membuat kodingan seperti dibawah ini. untuk cascade notation titik koma
  * di taruh pada akhir baris kode
  *
  * var dicodingCat = Animal('', 2, 4.2);
  * dicodingCat.name = 'Gray';
  * dicodingCat.eat();
  * */

  // ini builder pattern
  final addressBook = (AddressBookBuilder()
    ..name = 'jenny'
    ..email = 'jenny@example.com'
    ..phone = '415-555-0100')
      .build();


}

class AddressBookBuilder{
  var name;
  var email;
  var phone;

  AddressBookBuilder([this.name, this.email, this.phone]); // Constructor dengan null safety

  void build(){
    print("Name = $name");
    print("Email = $email");
    print("Phone = $phone");
  }


}