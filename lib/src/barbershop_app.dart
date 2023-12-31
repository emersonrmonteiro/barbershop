import 'package:asyncstate/widget/async_state_builder.dart';
import 'package:barbershop/src/core/ui/barbershop_theme.dart';
import 'package:barbershop/src/core/ui/widget/barbershop_loader.dart';
import 'package:barbershop/src/features/auth/login/login_page.dart';
import 'package:barbershop/src/features/splash/splash_page.dart';
import 'package:flutter/material.dart';

class BarbershopApp extends StatelessWidget {
  const BarbershopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AsyncStateBuilder(
      customLoader: const BarbershopLoader(),
      builder: (asyncNavigatiorObserver) {
        return MaterialApp(
          title: 'Barbershop',
          theme: BarbershopTheme.themeData,
          navigatorObservers: [asyncNavigatiorObserver],
          routes: {
            '/': (_) => const SplashPage(),
            '/auth/login': (_) => const LoginPage(),
            '/home/adm': (_) => const Text('ADM'),
            '/home/employee': (_) => const Text('Employee'),
          },
        );
      },
    );
  }
}
