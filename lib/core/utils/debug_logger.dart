import 'package:flutter/foundation.dart';

extension DebugLogger on String {
  get logger {
    debugPrint("::::::: $this :::::::", wrapWidth: 2048);
  }
}
