import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Esta funcion findAncestorWidgetOfExactType nos devuelve el padre que encuentre (siempre del tipo generico que le especifiquemos)
    final materialAppContext = context.findAncestorWidgetOfExactType<MaterialApp>();
    print('El contexto de material app $materialAppContext');
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
