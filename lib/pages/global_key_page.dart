import 'package:flutter/material.dart';

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
        onPressed: _printTextSize,
      ),
    );
  }

  void _printTextSize() {
    print(_textKey.currentContext);
  }
}
