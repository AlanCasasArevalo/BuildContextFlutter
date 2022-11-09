// Se crea una extension de String
extension StringUtilsExtension on String {
  bool get isValidEmail {
    return contains('@') && contains('.');
  }
}
