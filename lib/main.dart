import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hermosa/presentation/core/app_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ProviderScope(
    child: AppWidget(),
  ));
}
