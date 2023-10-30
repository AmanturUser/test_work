import 'package:auto_route/auto_route.dart';
import 'package:test_work/feature/order_feature/presentation/order_page.dart';
import '../../feature/auth_feature/presentation/auth_page/auth_page.dart';

part 'auto_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AuthRoute.page, path: '/'),
        AutoRoute(page: OrderRoute.page),
      ];
}

// flutter packages pub run build_runner build   - команда для билда

// при отправки аргументов из одной страницы в другу страницу мы должны
// по новой сгенерировать part 'router.gr.dart'; , а перед этим сделать
// конструктор с полем в странице где мы хотим получить аргументы

// AutoRoute(page: AuthRoute.page),
// AutoRoute(page: TodoTasks.page),
