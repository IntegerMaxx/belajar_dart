// ENUMERATED TYPES
/*
* Apa itu enumerated types sebenarnya??
* PENJELASAN: ENUMERATED TYPES itu seperti class yang lebih sederhana dan
* di dalamnya terdapat instance yang bisa kita panggil dan bisa memiliki nilai
* constant
*
*
* */

void main(){
  print(Rainbow.values);
  print(Rainbow.blue);
  print(Rainbow.red.index);

  var weatherForecast = Weather.cloudy;

  switch (weatherForecast){
    case Weather.sunny:
      print("Today's weather forecast is sunny");
      break;
    case Weather.cloudy:
      print("Today's weather forecast is cloudy");
      break;
    case Weather.rain:
      print("Today's weather forecast is rain");
      break;
    case Weather.storm:
      print("Today's weather forecast is sunny");
      break;
  }

  var test = Weather2.storm;

  print(test.toString());
}

enum Rainbow{
  red, orange, yellow, green, blue, indigo, violet
}

enum Weather{
  sunny, cloudy, rain, storm
}

enum Weather2 {
  sunny(15), // instance constan
  cloudy(34), // instance constan
  rain(69), //  instance constan
  storm(83); // instance constan

  final double rainAmount;

  const Weather2(this.rainAmount); // ini constructor

  @override
  String toString() =>
      "Today's weather forecast is $name with a $rainAmount% chance of rain";

  /*
  * PENJELASAN: Maksud dari "Weather2(this.rainAmount);" adalah kita membuat
  * sebuah constructor untuk diterima oleh class enumerated types. Maksud dari
  * "final double rainAmount;" adalah kita mendeklarasikan sebuah variabel
  * dengan data type double. Maksud dari "sunny(15),..." adalah kita memasukkan
  * nilai pada setiap instance dan kenapa dia bisa menerima nilai?? karena
  * kita telah membuat constructor sehingga dia bisa menerima nilai.
  * Maksud dari:
  *  @override
     String toString() =>
  * Adalah kita meng-override method toString(). Ovveride itu kita menulis ulang
  * method pada class yang berbeda atau pada scope yang berbeda
  * */
}