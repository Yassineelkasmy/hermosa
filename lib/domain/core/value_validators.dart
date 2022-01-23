import 'package:dartz/dartz.dart';
import 'package:hermosa/domain/core/value_failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLenght(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingLength(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(
  String input,
) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingLength(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSinleLine(
  String input,
) {
  if (!input.contains('\n')) {
    return right(input);
  } else {
    return left(ValueFailure.multiline(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  if (input.length >= 10) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhoneNumber(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePinCode(String input) {
  if (input.length == 6) {
    try {
      int.tryParse(input);
      return right(input);
    } catch (_) {
      return left(ValueFailure.invalidPinCode(failedValue: input));
    }
  } else {
    return left(ValueFailure.invalidPhoneNumber(failedValue: input));
  }
}
