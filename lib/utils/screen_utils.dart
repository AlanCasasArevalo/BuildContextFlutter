import 'package:flutter/material.dart';

// Se crea una extension de BuildContext
extension ScreenUtilsExtension on BuildContext {

  MediaQueryData get mediaQueryData {
    final mediaQuery = findAncestorWidgetOfExactType<MediaQuery>();
    final mediaQueryData = mediaQuery!.data;
    return mediaQueryData;
  }

  Size get screenSize {
    final screenSize = mediaQueryData.size;
    return screenSize;
  }
}