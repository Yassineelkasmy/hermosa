import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hermosa/domain/authentication/auth_failure.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isSubmitting,
    required bool showError,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        isSubmitting: false,
        showError: false,
        authFailureOrSuccessOption: none(),
      );
}
