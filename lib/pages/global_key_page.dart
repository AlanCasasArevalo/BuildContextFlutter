import 'package:flutter/material.dart';
import '../utils/screen_utils.dart';

class GlobalKeyPage extends StatelessWidget {
  final _textKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GlobalKeyPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          textDirection: TextDirection.rtl,
          children: [
            Row(
              children: [
                Text(
                  key: _textKey,
                  'Hola aMigos',
                ),
                Icon(
                  Icons.ac_unit,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Hola que pasa',
                ),
                Icon(
                  Icons.access_alarm,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Merluzos',
                ),
                Icon(
                  Icons.account_balance_outlined,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _printTextSize(context);
        },
      ),
    );
  }

  void _printTextSize(BuildContext context) {
    // Se imprime el contexto del Text en el que esta
    // print(_textKey.currentContext);
    // Se imprime el estado del Text en el que esta, OJO SI ES UN STATELESSWIDGET SERA NUL
    // print(_textKey.currentState);

    // OJO esto dara un crash si el _textKey no esta asignado o bien el widget se ha renderizado completamente
    final renderBox = _textKey.currentContext!.findRenderObject() as RenderBox;

    final screenSize = context.screenSize;

    // con estas instrucciones lo que conseguimos es la localizacion exacta del widget respecto a su posicion en toda la pantalla
    final position = renderBox.localToGlobal(

      // Se obtiene la posicion del widget respecto al centro de la pantalla.
      Offset(
        -screenSize.width*0.5,
        -screenSize.height*.5,
      ),
    );
    print(position);

    // Nos permite saber las dimensiones del texto
    print(renderBox.size);
  }
}
