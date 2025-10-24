class Validators {
  static final RegExp _emailRegExp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );
  
  static final RegExp _phoneRegExp = RegExp(
    r'^(?:[+0]91)?[0-9]{10}$',
  );

  static bool isValidEmail(String email) {
    return _emailRegExp.hasMatch(email);
  }

  static bool isValidPhone(String phone) {
    return _phoneRegExp.hasMatch(phone);
  }
}
