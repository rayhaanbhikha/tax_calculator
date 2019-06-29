class Validate {
  call(String errorMessage, String value) {
    if (value.isEmpty) {
      return errorMessage;
    }
    return null;
  }
}

final validate = new Validate();