// VARIABLE GLOBAL
var price = 300000; // ini adalah variabel global

void main(){
  var discount = checkDiscount(price);
  print('You need to pay: ${price - discount}');

  int umur = 20;
  String name = "Budi";
  kembalikanNilai(umur, name);
  String? testAja = kembalikanNilai(umur, name);
  print(testAja);
}

num checkDiscount(num price){
  num discount = 0;
  if(price >= 100000){
    discount = 10 / 100 * price;
  }

  return discount;
}

String? kembalikanNilai([int? test, String? hello2]){
  print("Nama saya $hello2, berumur $test punya uang $price");
  return hello2;
}

/*
* PENJELASAN: jadi fungsi "kembalikanNilai()" bisa mengembalikan nilai sekaligus
* memprint sesuatu, namun kita harus mennggunakan null safty yaitu dengan tanda
* tanya "?" pada type fungsinya yaitu String
* */