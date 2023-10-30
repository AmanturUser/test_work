import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../feature/auth_feature/data/data_sourse/secure_stogage.dart' as _i3;
import '../../feature/auth_feature/data/repositories/password_repositories.dart'
as _i12;
import '../../feature/auth_feature/domain/repository/password_repository.dart'
    as _i11;
import '../../feature/auth_feature/domain/use_case/login_password.dart' as _i16;
import '../../feature/auth_feature/domain/use_case/read_password.dart' as _i13;
import '../../feature/auth_feature/domain/use_case/write_password.dart' as _i15;
import '../../feature/auth_feature/presentation/bloc/auth_bloc.dart' as _i17;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.SecureStorage>(() => _i3.SecureStorage());
    gh.factory<_i11.PasswordRepository>(() =>
        _i12.PasswordRepositoryImpl(secureStorage: gh<_i3.SecureStorage>()));
    gh.factory<_i13.ReadPassword>(() =>
        _i13.ReadPassword(passwordRepository: gh<_i11.PasswordRepository>()));
    gh.factory<_i15.WritePassword>(() =>
        _i15.WritePassword(passwordRepository: gh<_i11.PasswordRepository>()));
    gh.factory<_i16.LoginAcount>(() =>
        _i16.LoginAcount(passwordRepository: gh<_i11.PasswordRepository>()));
    gh.factory<_i17.AuthBloc>(() => _i17.AuthBloc(
          checkPassword: gh<_i13.ReadPassword>(),
          writePassword: gh<_i15.WritePassword>(),
          loginPerson: gh<_i16.LoginAcount>(),
        ));
    return this;
  }
}
