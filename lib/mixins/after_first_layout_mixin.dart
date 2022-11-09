import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart' show State, StatefulWidget, WidgetBinging;

mixin AfterFirstLayoutMixin<T extends StatefulWidget> on State<T> {
  // Con este mixin lo que se pretende es esperar a que se haya renderizado por primera vez la pantalla para despues llamar al metodo onAfterFirstLayout y poder reutilizar el mixin en todos los widgets que queramos
  @override
  void initState() {
    super.initState();
    print('AfterFirstLayoutMixin');
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      onAfterFirstLayout();
    });
  }
  void onAfterFirstLayout();
}
