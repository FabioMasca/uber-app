import 'package:flutter/material.dart';

class NavigationService {
  static void navigateToLogin(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/login');
  }
}