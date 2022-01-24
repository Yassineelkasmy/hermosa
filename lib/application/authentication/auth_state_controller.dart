import 'package:hermosa/application/authentication/auth_event.dart';
import 'package:hermosa/application/authentication/auth_state.dart';
import 'package:hermosa/domain/authentication/i_auth_facade.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthStateController extends StateNotifier<AuthState> {
  AuthStateController(AuthState state, this._authFacade) : super(state);

  final IAuthFacade _authFacade;

  Future mapEventToState(AuthEvent authEvent) {
    return authEvent.map(authCheckRequested: (_) async {
      final userOption = await _authFacade.getSignedUser();
      userOption.fold(() {
        state = const AuthState.unauthenticated();
      }, (user) {
        state = AuthState.authenticated(user);
      });
    }, signedOut: (_) async {
      state = const AuthState.unauthenticated();
    });
  }
}
