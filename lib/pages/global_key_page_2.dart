import 'package:build_context/pages/home_page.dart';
import 'package:flutter/material.dart';
import '../utils/screen_utils.dart';

class GlobalKeyPage2 extends StatelessWidget {
  // Se crea una key para pasarla en el scaffold y saber si existe aun en el arbol de widgets
  final _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('GlobalKeyPage'),
      ),
      body: Center(
        child: Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showMessage(context);
        },
      ),
    );
  }

/*
  void _showMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        final _dialogKey = GlobalKey();
        return AlertDialog(
          key: _dialogKey,
          content: Text('Hola'),
          actions: [
            TextButton(
              onPressed: () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HomePage(),
                  ),
                );
                // Realizando la comprobacion de si el dialogo esta en el arbol de widgets nos evitamos el crash al navegar de vuelta
                if (_dialogKey.currentWidget != null) {
                  context.size;
                }
              },
              child: Text('Go home'),
            )
          ],
        );
      },
    );
  }
  */

  void _showMessage(BuildContext context) async {
    await Future.delayed(
      Duration(seconds: 2),
    );
    // Comprobamos el valor del contexto para comprobar que NO sea nulo y si no lo es podriamos navegar de vuelta
    if(_scaffoldKey.currentContext != null) {
      Navigator.push(
        _scaffoldKey.currentContext!,
        MaterialPageRoute(
          builder: (_) => HomePage(),
        ),
      );
    }
  }
}
