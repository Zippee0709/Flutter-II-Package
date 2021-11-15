RegExp _email = RegExp(
    r"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$");

RegExp _alphanumeric = RegExp(r'^[a-zA-Z0-9]+$');
RegExp _alpha = RegExp(r'^[a-zA-Z]+$');
RegExp _numeric = RegExp(r'^-?[0-9]+$');

RegExp _passwordStrong =
    RegExp(r'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$');

class Validators {
  /// check if the string [str] contains only letters
  bool isName(String str) {
    return _alpha.hasMatch(str);
  }

  /// check if the string [str] is an email
  bool isEmail(String str) {
    return _email.hasMatch(str.toLowerCase());
  }

  /// check if the string [str] contains at least 8 characters.
  /// [str] must contain at least 1 uppercase letter, 1 lowercase letter, and 1 number
  ///
  /// Can contain special characters
  bool isPasswordStrong(String str) {
    return _passwordStrong.hasMatch(str);
  }

  /// check if the string [str] contains only letters and numbers
  bool isAlphanumeric(String str) {
    return _alphanumeric.hasMatch(str);
  }

  /// check if the string [str] contains only letters
  bool isAlpha(String str) {
    return _alpha.hasMatch(str);
  }

  /// check if the string [str] contains only number
  bool isNum(String str) {
    return _numeric.hasMatch(str);
  }

  /// check if the string [str] and comparison are equal as string
  bool isEquals(String str, comparison) {
    return str == comparison.toString();
  }

  /// check if the string [str] is lowercase
  bool isLowercase(String str) {
    return str == str.toLowerCase();
  }

  /// check if the string [str] is uppercase
  bool isUppercase(String str) {
    return str == str.toUpperCase();
  }
}
