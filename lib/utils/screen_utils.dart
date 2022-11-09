import 'package:flutter/material.dart';

  Size getScreenSize(BuildContext context) {
    final mediaQuery = context.findAncestorWidgetOfExactType<MediaQuery>();
    final screenSize = mediaQuery?.data.size;
    if (screenSize != null) {
      return screenSize;
    } else {
      return const Size(1, 1);
    }
  }
// Se crea una extension de BuildContext
extension ScreenUtilsExtension on BuildContext {
}