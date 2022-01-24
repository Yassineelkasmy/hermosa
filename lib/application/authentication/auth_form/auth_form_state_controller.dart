import 'package:dartz/dartz.dart';
import 'package:hermosa/application/authentication/auth_form/auth_form_event.dart';
import 'package:hermosa/application/authentication/auth_form/auth_form_state.dart';
import 'package:hermosa/domain/authentication/i_auth_facade.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthFormStateController extends StateNotifier<AuthFormState> {
  AuthFormStateController(AuthFormState state, this._authFacade) : super(state);
  final IAuthFacade _authFacade;

  Future mapEventToState(AuthFormEvent event) {
    return event.map(signInWithGooglePresseed: (_) async {
      state = state.copyWith(
        isSubmitting: true,
      );
      final authFailureOrSuccess = await _authFacade.signInWithGoogle();
      state = state.copyWith(
        authFailureOrSuccessOption: optionOf(authFailureOrSuccess),
        isSubmitting: false,
      );
      authFailureOrSuccess.fold((failure) => null, (success) => null);
    }, signInWithFacebookPressed: (_) async {
      throw UnimplementedError();
    }, signOutPressed: (_) async {
      throw UnimplementedError();
    });
  }
}
