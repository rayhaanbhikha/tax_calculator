class TaxForm {
  String salary;
  RateOfPay rateOfPay;

  @override
  String toString() {
    return """
      salary: $salary,
      rateOfPay: ${rateOfPay.toString()}
    """;
  }
}

enum RateOfPay { hour, day, week, month, year }