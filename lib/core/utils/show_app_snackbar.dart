import 'package:flutter/material.dart';

void showAppSnackBar({
  required BuildContext context,
  required String message,
  int? duration,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: Duration(seconds: duration ?? 1),
    ),
  );
}
