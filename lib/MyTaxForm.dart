import 'package:flutter/widgets.dart';
import 'package:tax_calc/model/TaxForm.dart';

class MyTaxForm with ChangeNotifier {
  TaxForm _taxForm = TaxForm();

  String get salary => _taxForm.salary;

  set salary(String newSalary) {
    _taxForm.salary = newSalary;
    notifyListeners();
  }

  void save() {
    print(_taxForm.toString());
  }
}
