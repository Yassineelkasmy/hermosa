import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hermosa/application/auth/auth_form/auth_form_event.dart';
import 'package:hermosa/providers/auth_form_provider.dart';
import 'package:hermosa/presentation/utils/add_space.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authFormState = ref.watch(authFormProvider);
    final authFormController = ref.watch(authFormProvider.notifier);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              ElevatedButton(
                onPressed: () {
                  authFormController.mapEventToState(
                    const AuthFormEvent.signInWithGooglePresseed(),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/images/google.svg",
                      fit: BoxFit.fitHeight,
                    ),
                    addHorizontalSpace(15),
                    const Text("Continue with Google"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
