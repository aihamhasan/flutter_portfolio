// @dart=2.7

import 'dart:ui' as ui;

import 'package:flutter_portfolio/main.dart' as entrypoint;

Future<void> main() async {
  await ui.webOnlyInitializePlatform();
  entrypoint.main();
}
