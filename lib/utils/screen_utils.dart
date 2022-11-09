import 'package:flutter/material.dart';

// Se crea una extension de BuildContext
extension ScreenUtilsExtension on BuildContext {
  // Se quita el context como parametro
  Size getScreenSize() {
    final mediaQuery = this.findAncestorWidgetOfExactType<MediaQuery>();
    final screenSize = mediaQuery?.data.size;
    if (screenSize != null) {
      return screenSize;
    } else {
      return const Size(1, 1);
    }
  }
}