import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Con este widget (MediaQuery) se recupera las dimensiones de toda la panalla
    final mediaQuery = context.findAncestorWidgetOfExactType<MediaQuery>();
    // podemos recuperar por ejemplo el tamaño del dispositivo en el que se renderiza,
    // y hace calculos de cuanto queremos que ocupe un widget hijo respecto a las pantallas a renderizar
    final screenSize = mediaQuery?.data.size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Contexts'),
      ),
      body: Center(
        child: Text(
          '${screenSize?.width}x${screenSize?.height}',
        ),
      ),
    );
  }
}
