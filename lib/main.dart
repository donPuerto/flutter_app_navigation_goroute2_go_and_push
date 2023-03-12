import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'page_a.dart';
import 'pageB.dart';
import 'page_c.dart';
import 'routes_names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      name: RouteNames.pageA,
      path: '/',
      builder: (context, state) => const PageA(),
      routes: [
        GoRoute(
          name: RouteNames.pageB,
          path: 'pageB',
          builder: (context, state) => const PageB(),
        ),
        GoRoute(
          name: RouteNames.pageC,
          path: 'pageC',
          builder: (context, state) => const PageC(),
        ),
      ],
    )
  ],
);
