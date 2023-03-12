import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'routes_names.dart';

class PageB extends StatelessWidget {
  const PageB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page B"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.pushNamed(RouteNames.pageC),
          child: const Text("Go to Page C"),
        ),
      ),
    );
  }
}
