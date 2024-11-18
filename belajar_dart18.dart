// WHILE DO-WHILE

void main(){
  iniWhile();

  iniDoWhile();
  // infiniteLoop();
  iniTugas();
}

void iniWhile(){
  print("\nINI WHILE");
  var i = 1; // inisialisasi dilakukan diluar scope while
  while (i <= 10){ // cek kebenaran dilakukan pertama kali
    print(i); // sesuatu dilakukan disini
    i++; // increment dilakukan setelah while melakukan sesuatu
  }
}

void iniDoWhile(){
  print("\nINI DO-WHILE");
  var i = 1; // inisialisasi dilakukan diluar scope do-while

  do{
    print(i); // sesuatu dilakukan disini
    i++; // increment dilakukan setelah do-while melakukan sesuatu
  } while (i <= 2);// cek kebenaran dilakukan setelah melakukan sesuatu
}

void infiniteLoop(){
  print("\nINI INFINITE LOOP");
  var i = 1;

  while (i < 5) {
    print(i);
  }
}

void iniTugas(){
  int n = 10; // jumlah awal bintang pada baris pertama
  while (n > 0) {
    print('*' * n); // mencetak n buah bintang pada baris tersebut
    n--; // mengurangi jumlah bintang untuk baris berikutnya
  }
}