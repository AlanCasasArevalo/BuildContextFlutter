import 'package:build_context/utils/screen_utils.dart';
import 'package:flutter/material.dart';

class GlobalKeyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
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
              children: [Text('Hola aMigos'), Icon(Icons.ac_unit)],
            ),
            Row(
              children: [Text('Hola que pasa'), Icon(Icons.access_alarm)],
            ),
            Row(
              children: [Text('Merluzos'), Icon(Icons.account_balance_outlined)],
            ),
          ],
        ),
      ),
    );
  }
}
