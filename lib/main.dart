import 'package:fashion_e_commerce_app/screens/page_not_found/view/page_not_found_view.dart';
import 'package:fashion_e_commerce_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    //Theme Class
    AppTheme theme = AppTheme(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme.themeData,
      home: const PageNotFoundView(),
    );
  }
}
