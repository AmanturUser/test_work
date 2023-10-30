import 'package:dartz/dartz.dart';
import '../../../../core/error_journal/error_journal.dart';
import '../entities/password.dart';

abstract interface class PasswordRepository {
  Future<Either<Failure, bool>> writePassword(Password password);

  Future<Either<Failure, bool>> readPassword();

  Future<Either<Failure, bool>> loginPassword(Password password);
}
