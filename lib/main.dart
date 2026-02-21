import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Setup des injections si nécessaire (ex: GetIt, SharedPrefs)
  
  runApp(
    // ProviderScope de Riverpod englobe l'application
    const ProviderScope(
      child: GodTierApp(),
    ),
  );
}

class GodTierApp extends ConsumerWidget {
  const GodTierApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Router de base (à déporter dans lib/core/router/app_router.dart)
    final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
        ),
      ],
    );

    return MaterialApp.router(
      title: 'God Tier App',
      themeMode: ThemeMode.system,
      // Thème clair/sombre de base. A configurer via ton design_system !
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      routerConfig: router,
    );
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Boilerplate Prêt 🚀')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Bienvenue sur ton nouveau standard de qualité!'),
            SizedBox(height: 16),
            Text('1. Design System Centralisé'),
            Text('2. Clean Architecture'),
            Text('3. Performance Monitoré'),
            Text('4. CI/CD & Tests Auto'),
          ],
        ),
      ),
    );
  }
}
