import 'package:flutter_test_22/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, String>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });

   Future<Either<Failure,String>> loginWithEmailPassword({
    required String email,
    required String password,
  });
}
