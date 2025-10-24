
import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  // Theme extensions
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  // Media query extensions
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  // Navigation extensions
  void push(Widget page) => Navigator.of(this).push(MaterialPageRoute(builder: (_) => page));
  void pop() => Navigator.of(this).pop();
}
