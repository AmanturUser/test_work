import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/auto_route/auto_route.dart';
import 'core/servise_locator/servise_lacator.dart';
import 'core/style/app_colors.dart';
import 'feature/auth_feature/presentation/bloc/auth_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 787),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<AuthBloc>(),
          ),
        ],
        child: MaterialApp.router(
          title: 'TodoTest',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: TextStyle(
              fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white
            ),
          primary: AppColors.mainColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            // maximumSize: Size(345, 50),
            padding: const EdgeInsets.symmetric(
              horizontal: 140,
              vertical: 15,
            ),
            elevation: 0,
            // splashFactory: InteractiveInkFeature()
          ),
        ),
          ),
          routerDelegate: AutoRouterDelegate(_appRouter),
          routeInformationParser:
              _appRouter.defaultRouteParser(includePrefixMatches: true),
        ),
      ),
    );
  }
}
