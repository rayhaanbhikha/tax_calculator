import 'package:flutter/widgets.dart';
import 'package:tax_calc/model/TaxForm.dart';

class MyTaxForm with ChangeNotifier {
  TaxForm _taxForm = TaxForm();

  String get firstName => _taxForm.firstName;

  set firstName(String newFirstName) {
    _taxForm.firstName = newFirstName;
    notifyListeners();
  }

  String get lastName => _taxForm.lastName;

  set lastName(String newLastName) {
    _taxForm.lastName = newLastName;
    notifyListeners();
  }

  void save() {
    print(_taxForm.toString());
  }
}
