import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:test_work/core/servise_locator/servise_lacator.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => getIt.init();

// flutter packages pub run build_runner build
