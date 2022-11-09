import 'package:build_context/utils/screen_utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = getScreenSize(context);
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
