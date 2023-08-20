import '../../core/exceptions/repository_exception.dart';
import '../../core/function_program/either.dart';
import '../../model/barbershop_model.dart';
import '../../model/user_model.dart';

abstract interface class BarbershopRepository {
  Future<Either<RepositoryException, BarbershopModel>> getMyBarbershop(
      UserModel userModel);
}
