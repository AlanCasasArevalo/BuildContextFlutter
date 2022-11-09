import 'package:build_context/pages/home_page.dart';
import 'package:build_context/utils/screen_utils.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    // Lo que se haria en una aplicacion real llamada a servicios
    // Una vez terminado todos los servicios navegamos a home
    final route = MaterialPageRoute(builder: (_) => HomePage());
    Navigator.pushReplacement(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
