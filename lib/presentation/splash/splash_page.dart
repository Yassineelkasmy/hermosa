import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hermosa/application/authentication/auth_form/auth_provider.dart';
import 'package:hermosa/application/authentication/auth_state.dart';
import 'package:hermosa/presentation/routes/router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashPage extends HookConsumerWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AuthState authState = ref.watch(authtProvider);
    authState.map(
      initial: (_) {},
      authenticated: (_) => AutoRouter.of(context).push(HomePageRoute()),
      unauthenticated: (_) => AutoRouter.of(context).push(LoginPageRoute()),
    );
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
