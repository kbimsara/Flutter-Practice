class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  int calculateYearOfBirth(int currentYear) {
    return currentYear - age;
  }

  void displayDetails() {
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
  }
}

void main() {
  Person person = Person("Jane Smith", 25, "456 Oak Avenue");
  person.displayDetails();
  print("Year of Birth: ${person.calculateYearOfBirth(2024)}");
}
