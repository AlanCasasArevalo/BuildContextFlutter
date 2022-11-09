import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart' show State, StatefulWidget, WidgetBinging;

mixin AfterFirstLayoutMixin<T extends StatefulWidget> on State<T> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      onAfterFirstLayout();
    });
  }
  void onAfterFirstLayout();
}
