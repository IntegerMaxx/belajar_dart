// CLASS

void main(){
  var helloCat = Animal('Hello', 2, 4.2);
  helloCat.eat();
  helloCat.poop();

  print(helloCat.weight);
}

class Animal{
  String name;
  int age;
  double weight;

  Animal(this.name, this.age, this.weight); // ini constructor

  void eat(){
    print('$name is eating');
    weight = weight + 0.2;
  }

  void sleep(){
    print('$name is sleeping');
  }

  void poop(){
    print('$name is pooping');
    weight = weight - 0.1;
  }
}
