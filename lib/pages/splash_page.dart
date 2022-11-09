import 'package:build_context/utils/screen_utils.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contexts'),
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
