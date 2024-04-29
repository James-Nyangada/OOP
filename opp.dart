import 'dart:io';

// Define an interface
abstract class Animal {
  void speak();
}

// Implement the Animal interface with a class
class Dog implements Animal {
  @override
  void speak() {
    print('Woof!');
  }
  
  void run() {
    print('Dog is running.');
  }
}

// Define a parent class with a method to override
class Shape {
  void draw() {
    print('Drawing a shape.');
  }
}

// Inherit Shape and override draw method
class Square extends Shape {
  @override
  void draw() {
    print('Drawing a square.');
  }
}

// Class initialized with data from a file
class Person {
  String name;
  int age;
  
  Person(this.name, this.age);
  
  // Factory method to initialize from a file
  factory Person.fromFile(String filename) {
    List<String> data = File(filename).readAsStringSync().split(',');
    return Person(data[0], int.parse(data[1]));
  }
}

void main() {
  // Creating an instance of Dog
  Dog dog = Dog();
  dog.speak();
  dog.run();
  
  // Creating an instance of Square
  Square square = Square();
  square.draw();
  
  // Creating an instance of Person initialized from a file
  Person person = Person.fromFile('person_data.txt');
  print('Name: ${person.name}, Age: ${person.age}');
  
  // Method demonstrating the use of a loop
  void printNumbers() {
    for (int i = 1; i <= 5; i++) {
      print(i);
    }
  }
  
  // Calling the method that demonstrates the use of a loop
  printNumbers();
}
