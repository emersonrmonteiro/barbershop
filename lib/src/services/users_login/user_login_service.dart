import 'package:barbershop/src/core/exceptions/service_exception.dart';
import 'package:barbershop/src/core/function_program/either.dart';
import 'package:barbershop/src/core/function_program/nil.dart';

abstract interface class UserLoginService {
  Future<Either<ServiceException, Nil>> execute(String email, String password);
}
