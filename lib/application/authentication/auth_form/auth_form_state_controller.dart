import 'package:hermosa/application/authentication/auth_form/auth_form_event.dart';
import 'package:hermosa/application/authentication/auth_form/auth_form_state.dart';
import 'package:hermosa/domain/authentication/i_auth_facade.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthFormStateController extends StateNotifier<AuthFormState> {
  AuthFormStateController(AuthFormState state, this._authFacadel)
      : super(state);
  final IAuthFacade _authFacadel;

  Future mapEventToState(AuthFormEvent event) {
    return event.map(signInWithGooglePresseed: (_) async {
      final userOption = await this._authFacadel.getSignedUser();
    }, signInWithFacebookPressed: (_) async {
      throw UnimplementedError();
    }, authCheckRequested: (_) async {
      throw UnimplementedError();
    }, signedOut: (_) async {
      throw UnimplementedError();
    });
  }
}
