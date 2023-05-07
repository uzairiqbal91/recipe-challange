import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Helpers {
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

  static void showToast(String msg) {
    print("msg " + msg);

    if (msg == null) {
      return;
    }

    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,

        fontSize: 16.0);

  }
}
