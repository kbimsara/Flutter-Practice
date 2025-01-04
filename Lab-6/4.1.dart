class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void displayDetails() {
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
  }
}

void main() {
  Person person = Person("John Doe", 30, "123 Elm Street");
  person.displayDetails();
}
