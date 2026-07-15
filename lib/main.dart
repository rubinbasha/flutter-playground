import 'package:flutter/material.dart';
import 'package:flutter_playground/app/app.dart';
import 'package:flutter_playground/config/app_config.dart';
import 'package:flutter_playground/core/di/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(AppConfig.environment);
  runApp(const PlaygroundApp());
}
