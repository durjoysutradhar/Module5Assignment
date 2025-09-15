class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  double discountedPrice(double discountPercent) {
    return price - (price * discountPercent / 100);
  }

  void showDetails(double discountPercent) {
    print("Title: $title");
    print("Author: $author");
    print("Price: \$$price");
    print("Discounted Price (${discountPercent}%): \$${discountedPrice(discountPercent)}");
    print("---------");
  }
}

class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);
}

class Manager extends Employee {
  String department;

  Manager(String name, double salary, this.department) : super(name, salary);

  void displayInfo() {
    print("Manager Name: $name");
    print("Salary: \$$salary");
    print("Department: $department");
    print("--------");
  }
}

class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage) : super(name, salary);

  void displayInfo() {
    print("Developer Name: $name");
    print("Salary: \$$salary");
    print("Programming Language: $programmingLanguage");
    print("--------");
  }
}

abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan extends Appliance {
  @override
  void turnOn() {
    print("Fan is now running");
  }

  @override
  void turnOff() {
    print("Fan is turned off");
  }
}

class Light extends Appliance {
  @override
  void turnOn() {
    print("Light is switched on");
  }

  @override
  void turnOff() {
    print("Light is switched off");
  }
}

void main() {
  print("Problem 1 -> Books ");
  Book book1 = Book("Dart Programming", "Durjoy Sutradhar", 400);
  Book book2 = Book("Flutter Development", "Akash Sutradhar", 650);

  book1.showDetails(10);
  book2.showDetails(15);

  print("\nProblem 2 -> Employees ");
  Manager manager = Manager("Akash", 10000, "IT");
  Developer developer = Developer("Shawn", 20000, "Dart & Flutter");

  manager.displayInfo();
  developer.displayInfo();

  print("\nProblem 3 ->Appliances ");
  Fan fan = Fan();
  Light light = Light();

  fan.turnOn();
  fan.turnOff();

  light.turnOn();
  light.turnOff();
}