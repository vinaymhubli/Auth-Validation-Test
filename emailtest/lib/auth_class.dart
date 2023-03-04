class Authentication {
  static String? emailAuth(String email) {
    if (email.isEmpty) {
      return "Required Field";
    }
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(p);
    if (regExp.hasMatch(email)) {
      return "Email verified";
    } else {
      return "Enter a valid email id";
    }
  }

  static String? passwordAuth(String password) {
    if (password.isEmpty) {
      return "Required Password";
    }

    if (password.length < 8) {
      return 'Enter valid password';
    } else {
      return 'Password verified';
    }
  }
}
