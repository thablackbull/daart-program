import 'dart:io';

// Define an interface
abstract class Animal {
  void makeSound();
}

// Implement the interface in a class
class Dog implements Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

// Create a parent class with a method to be overridden
class Shape {
  void draw() {
    print("Drawing a shape");
  }
}

// Create a subclass that overrides the draw method
class Circle extends Shape {
  @override
  void draw() {
    print("Drawing a circle");
  }
}

// Create a class that reads data from a file and initializes an instance
class FileReader {
  String readDataFromFile(String fileName) {
    var file = File(fileName);
    var contents = file.readAsStringSync();
    return contents;
  }
}

// Demonstrate the use of a loop in a method
void printNumbers(int n) {
  for (var i = 1; i <= n; i++) {
    print(i);
  }
}

void main() {
  // Implementing an interface
  var dog = Dog();
  dog.makeSound();

  // Overriding an inherited method
  var circle = Circle();
  circle.draw();

  // Initializing an instance with data from a file
  var fileReader = FileReader();
  var data = fileReader.readDataFromFile("data.txt");
  print("Data from file: $data");

  // Demonstrating the use of a loop
  print("Printing numbers from 1 to 5:");
  printNumbers(5);
}
