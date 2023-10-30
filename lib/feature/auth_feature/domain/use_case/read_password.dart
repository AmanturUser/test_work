import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error_journal/error_journal.dart';
import '../../../../core/use_case/use_case.dart';
import '../repository/password_repository.dart';

@injectable
class ReadPassword implements UseCase<bool, NoParams> {
  final PasswordRepository passwordRepository;
  ReadPassword({
    required this.passwordRepository,
  });
  @override
  Future<Either<Failure, bool>> call(NoParams noParams) async {
    return await passwordRepository.readPassword();
  }
}
