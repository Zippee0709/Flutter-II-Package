class Validators {
  bool isValidName(String str) {
    final number = num.tryParse(str);

    if (number == null) {
      return true;
    }
    return false;
  }

  bool isValidEmail(String str) {
    if (str.contains("@")) {
      return true;
    }
    return false;
  }

  bool isValidPassword(String str) {
    if (str.length > 4) {
      return true;
    }
    return false;
  }
}
