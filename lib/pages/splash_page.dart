import 'package:build_context/mixins/after_first_layout_mixin.dart';
import 'package:build_context/pages/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with AfterFirstLayoutMixin {

  // Hay 2 initState uno el del AfterFirstLayoutMixin y otro el de la propia clase
  // el orden de su ejecucion depende del super.initState en cada uno de los initStates
  @override
  void initState() {
    // Si hacemos el codigo que queremos ejecutar en por encima del super.initState, este codigo se ejecutara ANTES que el del mixin (AfterFirstLayoutMixin).
    print('_SplashPageState');
    super.initState();
    // Si hacemos el codigo que queremos ejecutar en por debajo del super.initState, este codigo se ejecutara DESPUES que el del mixin (AfterFirstLayoutMixin).
    // print('_SplashPageState');
  }

  @override
  Future <void> onAfterFirstLayout() async {
    _init();
  }

  Future<void> _init() async {
    // Lo que se haria en una aplicacion real llamada a servicios
    // Una vez terminado todos los servicios navegamos a home
    await Future.delayed(const Duration(milliseconds: 1500),() {
      final route = MaterialPageRoute(builder: (_) => HomePage());
      Navigator.pushReplacement(context, route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

}
