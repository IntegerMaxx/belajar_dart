// CONTROL FLOW (IF DAN ELSE)

void main(){
  var isRaining = true;

  print('Prepere before going to office.');
  if (isRaining){
    print("Oh. it's raining, bring an umbrella.");
  } 
  print("Going to the office.\n\n");

  openStore();

  var score = 85;
  print("\nNilai Anda: ${calculateScore(score)}");

  beliMinyak();
}

void openStore(){
  var openHours = 8;
  var closedHours = 21;
  var now = 17;

  if (now > openHours && now < closedHours){
    print("Hello, we're open");
  } else {
    print("Sorry, we've closed");
  }
}

String calculateScore(num score){
  if (score > 90){
    return 'A';
  } else if (score > 80){
    return 'B';
  } else if (score > 70){
    return 'C';
  } else if (score > 60){
    return 'D';
  } else {
    return 'E';
  }
}

// KASUS:
// Naak! Tolong ke pasar beli'in 1 botol minyak goreng, kalau ada telur, ambil 6.
void beliMinyak(){
  var botolMinGor = 1;
  var telur = true;

  if (telur){
    print("Ambil ${botolMinGor + 5} botol");
  } else {
    print("Beli 1 botol minyak goreng");
  }
}