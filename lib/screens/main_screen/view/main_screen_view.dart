import 'package:flutter/material.dart';

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          MediaQuery.of(context).size.height.toString(),
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: const [],
      ),
    );
  }
}
