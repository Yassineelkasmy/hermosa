import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppWidget extends HookConsumerWidget {
  const AppWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        body: Center(
          child: Text("Helllo"),
        ),
      ),
    );
  }
}
