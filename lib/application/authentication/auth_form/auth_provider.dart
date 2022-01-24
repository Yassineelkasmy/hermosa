import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hermosa/application/authentication/auth_event.dart';
import 'package:hermosa/application/authentication/auth_state.dart';
import 'package:hermosa/application/authentication/auth_state_controller.dart';
import 'package:hermosa/infrastructure/authentication/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authtProvider =
    StateNotifierProvider.autoDispose<AuthStateController, AuthState>((ref) {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FireBaseAuthFacade fireBaseAuthFacade = FireBaseAuthFacade(
    firebaseAuth,
    googleSignIn,
  );
  AuthStateController authStateController =
      AuthStateController(fireBaseAuthFacade);
  return authStateController
    ..mapEventToState(const AuthEvent.authCheckRequested());
});
