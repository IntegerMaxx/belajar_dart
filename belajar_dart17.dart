// CONTROL FLOW (FOR LOOPS)

import 'dart:io';

void main(){
  // for(int i = 1; i <= 100; i++){
  //   print(i);
  // }

  // suatuFor();
  suatuFor2();
  // print("*" * 100);
}

void suatuFor(){
  var a = "*";
  for(int i = 1; i <= 10; i++){
    for(int j = 1; j <= 10; j++){
      print("* ");
      if(i == j){
        break;
      }
    }
    stdout.write("\n");
  }
}

void suatuFor2(){
  for (int i = 1; i <= 10; i--) {
    print('**********' * i);
  }
}


