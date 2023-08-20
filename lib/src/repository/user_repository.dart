import 'package:barbershop/src/core/exceptions/auth_exception.dart';
import 'package:barbershop/src/core/function_program/either.dart';

abstract interface class UserRepository {
  Future<Either<AuthException, String>> login(String email, String password);
}
