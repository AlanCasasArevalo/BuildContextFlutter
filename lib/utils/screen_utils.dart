import 'package:flutter/material.dart';

// Se crea una extension de BuildContext
extension ScreenUtilsExtension on BuildContext {
  Size getScreenSize() {
    final mediaQuery = findAncestorWidgetOfExactType<MediaQuery>();
    final screenSize = mediaQuery?.data.size;
    if (screenSize != null) {
      return screenSize;
    } else {
      return const Size(1, 1);
    }
  }
}