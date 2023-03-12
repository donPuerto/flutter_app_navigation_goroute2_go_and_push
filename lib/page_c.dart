import 'package:flutter/material.dart';

class PageC extends StatelessWidget {
  const PageC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page C"),
      ),
      body: const Center(
        child: Text("We are in the Page C"),
      ),
    );
  }
}
