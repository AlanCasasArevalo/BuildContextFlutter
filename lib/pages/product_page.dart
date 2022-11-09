import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = context.findAncestorWidgetOfExactType<MediaQuery>();
    final screenSize = mediaQuery?.data.size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Contexts'),
      ),
      body: Column(
        children: [
          Container(
            height: screenSize?.height != null ? screenSize!.height * .5 : screenSize?.height,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
