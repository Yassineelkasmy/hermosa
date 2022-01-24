import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hermosa/domain/authentication/auth_failure.dart';

part 'auth_form_state.freezed.dart';

@freezed
class AuthFormState with _$AuthFormState {
  const factory AuthFormState({
    required bool isSubmitting,
    required bool showError,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _AuthFormState;

  factory AuthFormState.initial() => AuthFormState(
        isSubmitting: false,
        showError: false,
        authFailureOrSuccessOption: none(),
      );
}
