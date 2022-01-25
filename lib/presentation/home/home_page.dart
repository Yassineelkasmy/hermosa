import 'package:flutter/material.dart';
import 'package:hermosa/presentation/home/widgets/app_bar_widget.dart';
import 'package:hermosa/providers/auth/auth_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    return Scaffold(
      appBar: buildAppBar(user!),
      body: Column(
        children: [Row()],
      ),
    );
  }
}
