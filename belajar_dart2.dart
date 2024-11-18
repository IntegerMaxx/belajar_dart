import 'package:belajar_dart/belajar_dart2.dart' as belajar2;

void main(List<String> arguments){
  print('Hello Dart! Dart is great.');
  print('6 * 7 = ${belajar2.calculate()}');
  test().gretings();
}

int calculate(){
  return 6 * 7;
}

class test {
  void gretings(){
    var greetings = 'Hello Dart';
    print(greetings);
  }
}
