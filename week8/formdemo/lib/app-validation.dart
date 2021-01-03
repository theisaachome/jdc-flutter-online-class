mixin AppValidation {
  String validateName(String value) {
    if (value.length < 4 || value.isEmpty) {
      return "Please Enter Real Name";
    }
    return null;
  }

  String validateEmail(String value) {
    if (!value.contains("@") || value.isEmpty) {
      return "Please Enter Valid Mail";
    }
    return null;
  }

  String validatePhone(String value) {
    if (value.length < 10 || value.isEmpty) {
      return "Please Enter Valid Phone";
    }
    return null;
  }
}
