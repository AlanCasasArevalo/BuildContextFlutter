import 'package:flutter/material.dart' show StatelessWidget, GlobalKey;

mixin MountedMixin on StatelessWidget {
  final widgetKey = GlobalKey();

  bool get mounted {
    return widgetKey.currentContext != null;
  }
}