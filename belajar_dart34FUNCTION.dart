// PARADIGMA FUNCTIONAL PROGRAMMING
/*
* Apa itu paradigma functional programming sebenarya??
* PENJELASAN: Functional programming adalah paradigma pemrograman di mana
* proses komputasi didasarkan pada fungsi matematika murni.
* Functional programming (FP) ditulis dengan gaya deklaratif yang berfokus
* pada “what to solve” dibandingkan “how to solve” pada gaya imperatif.
*
* */

class funPro{

  // PURE FUNCTION
  int sum(int num1, int num2){
    return num1 + num2;
  }

  /*
  * PENJELASAN: pada kodingan diatas. Pure functions berarti sebuah fungsi
  * bergantung pada argumen atau parameter yang dimasukkan ke dalamnya.
  * Sehingga pemanggilan fungsi dengan nilai argumen yang sama akan selalu
  * memberikan hasil yang sama pula
  * */

  // RECURSION
  int fibonacci(n) {
    if (n <= 0) {
      return 0;
    } else if(n == 1) {
      return 1;
    } else {
      return fibonacci(n - 1) + fibonacci(n - 2); // pemanggilan fungsi itu sendiri
    }
  }

  /*
  * PENJELASAN: Pada functional programming tidak ada konsep perulangan seperti
  * for atau while. Iterasi pada functional programming dilakukan melalui
  * rekursi atau pemanggilan fungsi dari fungsi itu sendiri, hingga mencapai
  * kasus dasar.
  * */

  // IMMUTABLE VARIABLES
  void variabls(){
    var x = 5; // inisialisasi 
    x = x + 1; // Contoh variable yang tidak immutable
    print(x);
  }

}

void main(List<String> args){
  var test = funPro();

  print("${test.sum(20, 1)}");
  print("${test.fibonacci(10)}");
  test.variabls();
}


