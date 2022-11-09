import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(
            // No podemos acceder a un parametro como context si el widget aun no se ha renderizado
            '${context.size.toString()}',
          ),
        ));
  }
}
