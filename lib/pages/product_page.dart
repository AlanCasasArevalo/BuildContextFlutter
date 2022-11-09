import 'package:build_context/utils/screen_utils.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = getScreenSize(context);
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
