import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hermosa/application/auth/auth_event.dart';
import 'package:hermosa/application/auth/auth_form/auth_form_state.dart';
import 'package:hermosa/application/auth/auth_form/auth_form_controller.dart';
import 'package:hermosa/application/auth/auth_state.dart';
import 'package:hermosa/application/auth/auth_controller.dart';
import 'package:hermosa/infrastructure/auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final firebaseAuthFacadeProvider =
    Provider.autoDispose<FireBaseAuthFacade>((ref) {
  final firebaseAuth = FirebaseAuth.instance;
  final googleSignIn = GoogleSignIn();
  final fireBaseAuthFacade = FireBaseAuthFacade(
    firebaseAuth,
    googleSignIn,
  );
  return fireBaseAuthFacade;
});

final authtProvider =
    StateNotifierProvider.autoDispose<AuthController, AuthState>((ref) {
  final fireBaseAuthFacade = ref.watch(firebaseAuthFacadeProvider);

  AuthController authStateController = AuthController(fireBaseAuthFacade);
  return authStateController
    ..mapEventToState(const AuthEvent.authCheckRequested());
});

final authFormProvider =
    StateNotifierProvider.autoDispose<AuthFormController, AuthFormState>(
  (ref) {
    final fireBaseAuthFacade = ref.watch(firebaseAuthFacadeProvider);
    final authStateController = ref.watch(authtProvider.notifier);
    final authFormStateController = AuthFormController(
      fireBaseAuthFacade,
      authStateController,
    );
    return authFormStateController;
  },
);
