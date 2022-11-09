import 'package:build_context/utils/screen_utils.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    return Scaffold(
      appBar: AppBar(
        title: Text('Contexts'),
      ),
      body: Column(
        children: [
          Container(
            height: screenSize.height * .4,
            color: Colors.grey,
            child: Center(
              child: Text(
                //Conociendo la altura del status bar
                '${context.statusBarHeight.toString()}',
              ),
            ),
          )
        ],
      ),
    );
  }
}
