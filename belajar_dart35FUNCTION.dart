// ANONYMOUS FUNCTIONS
/*
* Apa itu anonymous function sebenarnya??
* PENJELASAN: anonymous function itu seperti kita membuat function pada sebuah
* variabel dan kita bisa membuatnya secara ekplicit dengan menggunakan keyword
* "Function"
* */

void main(List<String> args){
  var sum = (int num1, int num2){
    return num1 + num2;
  };

  Function printLambda = (){ // secara explisit memberi tahu bahwa printLambda adalah function
    print("This is lambda function");
  };

  printLambda();
  print(sum(21,22));

  var sum2 = (int num1, int num2) => num1 + num2; // penulisan lebih ringkas

  Function printLambda2 = () => print('This is lambda function'); // // penulisan lebih ringkas

  int test = sum2(20,30);
  print(test);

}