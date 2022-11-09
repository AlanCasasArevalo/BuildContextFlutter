import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Esta funcion findAncestorWidgetOfExactType nos devuelve el padre que encuentre (siempre del tipo generico que le especifiquemos)
    final materialAppContext = context.findAncestorWidgetOfExactType<MaterialApp>();
    final sizeBoxContext = context.findAncestorWidgetOfExactType<SizedBox>();
    print('El contexto de material app $materialAppContext');
    print('El contexto de sizeBox $sizeBoxContext');
    print('El contexto de sizeBox ${sizeBoxContext?.width}');
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
