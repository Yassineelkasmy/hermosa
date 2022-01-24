import 'package:flutter/material.dart';
import 'package:hermosa/presentation/routes/router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppWidget extends HookConsumerWidget {
  const AppWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _appRouter = AppRouter();
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      title: "Hermosa",
      debugShowCheckedModeBanner: false,
    );
  }
}
