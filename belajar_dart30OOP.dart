// IMPLICIT INTERFACE
/*
* Apa itu interface sebenarnya??
* PENJELASAN: interface itu seperti class penghubung antara class
* abstract dengan class yang sebenarnya atau class yang akan dijadikan object
* real
*
* */
import 'bird.dart';

void main(){
  var helloBird = Bird('Hello', 2, 0.8, 'Blue');

  helloBird.fly();
  helloBird.eat();
}
