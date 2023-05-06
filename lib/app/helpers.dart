class Helpers{

  static String? validateEmail(String? value) {
    const pattern = "[a-zA-Z0-9\+\.\_\%\-\+]{1,256}" +
        "\\@" +
        "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}" +
        "(" +
        "\\." +
        "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" +
        ")+";

    final regex = RegExp(pattern);

    if (value!.isEmpty) {
      return "Enter email address";
    }

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter a valid email address'
        : null;
  }

  static String? validatePassword(String? value) {

    if (value!.isEmpty) {
      return "Enter Password";
    }

  }

}