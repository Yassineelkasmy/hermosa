import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hermosa/application/auth/auth_form/auth_form_state.dart';
import 'package:hermosa/application/auth/auth_form/auth_form_state_controller.dart';
import 'package:hermosa/infrastructure/auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authFormProvider =
    StateNotifierProvider.autoDispose<AuthFormStateController, AuthFormState>(
  (ref) {
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final FireBaseAuthFacade fireBaseAuthFacade = FireBaseAuthFacade(
      firebaseAuth,
      googleSignIn,
    );

    final authFormStateController = AuthFormStateController(fireBaseAuthFacade);
    return authFormStateController;
  },
);
