import 'package:dartz/dartz.dart';
import 'package:hermosa/domain/auth/auth_failure.dart';
import 'package:hermosa/domain/auth/user.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedUser();
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  //Future<Either<AuthFailure, Unit>> signInWithFacebook();
  // TODO: Add facebook authentication support
  Future<void> signOut();
}
