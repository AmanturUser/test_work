import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error_journal/error_journal.dart';
import '../../../../core/use_case/use_case.dart';
import '../entities/password.dart';
import '../repository/password_repository.dart';

@injectable
class WritePassword implements UseCase<bool, Password> {
  final PasswordRepository passwordRepository;
  WritePassword({
    required this.passwordRepository,
  });
  @override
  Future<Either<Failure, bool>> call(Password password) async {
    return await passwordRepository.writePassword(password);
  }
}
