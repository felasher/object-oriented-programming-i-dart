import 'dart:io';

// Interface for animal
abstract class Animal {
  void makeSound();
}

// Base class Animal
class BaseAnimal implements Animal {
  @override
  void makeSound() {
    print('Animal makes a sound');
  }
}

// Dog class implementing Animal interface
class Dog extends BaseAnimal {
  @override
  void makeSound() {
    print('Dog barks');
  }
}

// Class for Zoo which contains list of animals
class Zoo {
  List<Animal> animals = [];

  // Method to add animal to zoo
  void addAnimal(Animal animal) {
    animals.add(animal);
  }

  // Method to demonstrate loop
  void animalSounds() {
    for (var animal in animals) {
      animal.makeSound();
    }
  }
}

void main() {
  // Initialize a zoo
  var myZoo = Zoo();

  // Add animals to the zoo
  myZoo.addAnimal(Dog());
  myZoo.addAnimal(BaseAnimal());

  // Demonstrate loop to make sounds of animals in the zoo
  myZoo.animalSounds();
}
