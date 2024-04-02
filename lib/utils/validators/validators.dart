class MyValidator {
  //for empty txt
  static String? validateForEmptyTxt(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return "$fieldName is required";
    }
    return null;
  }

  //for email
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email field is required.";
    }

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return "Invalid email address";
    }

    return null;
  }

  //passsword
  static String? validatePwd(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required.";
    }

    //check length
    if (value.length < 6) {
      return "Password length must be at least 6.";
    }

    //check uppercase
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return "Password must contain at least one uppercase letter.";
    }

    //check number
    if (!value.contains(RegExp(r'[0-9]'))) {
      return "Password must contain at least one number.";
    }

    //check lowercase
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return "Password must contain at least one special character.";
    }

    return null;
  }

  static String? validatePhoneno(String? value) {
    if (value == null || value.isEmpty) {
      return "Phone number is required";
    }

    final phoneNoRegExp = RegExp(r'[\+]?[0-9]{7-12}^$');
    if (!phoneNoRegExp.hasMatch(value)) {
      return "Invalid phone number";
    }

    return null;
  }
}
