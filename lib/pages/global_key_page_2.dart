import 'package:build_context/pages/home_page.dart';
import 'package:flutter/material.dart';
import '../utils/screen_utils.dart';

class GlobalKeyPage2 extends StatelessWidget {
  final _textKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

  void _showMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
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
                // Esto nos probocara un crash, debido a que estamos intentando coger el contexto del DIALOGO no de la pantalla anterior, y son diferentes contextos
                context.size;
              },
              child: Text('Go home'),
            )
          ],
        );
      },
    );
  }
}
