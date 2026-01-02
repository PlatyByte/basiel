import 'package:flutter/material.dart';

extension BasielBuildContext on BuildContext {
  bool get isBigScreen {
    final size = MediaQuery.maybeSizeOf(this);
    return size != null && size.width > 840;
  }
}
