import 'dart:math';

class Animal {
  static List<Animal> createdAnimals = [];
  String name;
  int legs;
  String sound;
  Animal({
    required this.name,
    required this.legs,
    this.sound = 'hmm',
  }) {
    createdAnimals.add(this);
  }

  void Show() {
    print("I am a $name & have $legs legs saying $sound");
  }

  static void showDetails() {
    print(
        " ${Animal.createdAnimals.length} animals have been created and they say following :-");
    for (int i = 0; i < Animal.createdAnimals.length; i++)
      Animal.createdAnimals[i].Show();
  }

  static void removeLegs() {
    for (int i = 0; i < Animal.createdAnimals.length; i++)
      Animal.createdAnimals[i].removeALeg();
  }

  void removeALeg() {
    legs--;
    print("Remove a leg from $name,new leg $legs");
  }

  static void addLegs() {
    for (int i = 0; i < Animal.createdAnimals.length; i++)
      Animal.createdAnimals[i].addALeg();
  }

  void addALeg() {
    legs++;
    print("Added a leg from $name,new leg $legs");
  }

  static void removeAnimal() {
    int index = RandomnumberGen();
    createdAnimals.removeAt(index);
    print("animal removed at index $index");
  }

  static void setLeg() {
    int index1 = RandomnumberGen();
    createdAnimals[index1].legs = 5;
    print('Leg set to index $index1');
  }

  static int RandomnumberGen() => Random().nextInt(createdAnimals.length);
}

void main() {
  Animal(legs: 4, name: "Cow", sound: 'moo');
  Animal(legs: 4, name: "dog");
  Animal(legs: 4, name: "cat");
  Animal(legs: 0, name: "snake");
  Animal(legs: 2, name: "parrot");
  Animal.showDetails();
  print('\n');
  Animal.removeLegs();
  print('\n');
  Animal.addLegs();
  print('\n');
  Animal.showDetails();
  print('\n');
  Animal.removeAnimal();
  print('\n');
  Animal.setLeg();
  print('\n');
  Animal.showDetails();
}
