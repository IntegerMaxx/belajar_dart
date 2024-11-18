// VARIABLE SCOPE

void main(){
  var isAvailableForDIscount = true;
  var price = 300000;
  num discount = 0;
  if (isAvailableForDIscount){
    discount = 10/100 * price;
  }
  print('You need to pay: ${price - discount}');



  num discount2 = checkDiscount(price);
  print('You need to pay2: ${price - discount}');

}

// DISCOUNT DENGAN FUNGSI
num checkDiscount(num price){
  num discount = 0;
  if (price >= 100000){
    discount = 10/10 * price;
  }

  return discount;
}


