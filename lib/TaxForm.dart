class TaxForm {
  String firstName, lastName;
  int age, salary;

  @override
  String toString() {
    return """
     first name: ${this.firstName}
    """;
  }

  void save() {
    print(this.toString());
  }
}