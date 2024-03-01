import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tmdb_app/app_core.dart';
import 'package:flutter_test/flutter_test.dart';

class TestAssetBundle extends CachingAssetBundle {
  @override
  Future<String> loadString(String key, {bool cache = true}) async =>
      utf8.decode((await load(key)).buffer.asUint8List());
  @override
  Future<ByteData> load(String key) async => rootBundle.load(key);
}

Future<void> startApp() async {
  runApp(DefaultAssetBundle(bundle: TestAssetBundle(), child: const AppCore()));
}
