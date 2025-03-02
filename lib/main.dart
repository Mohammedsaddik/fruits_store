import 'package:flutter/material.dart';
import 'package:fruits_store/Core/healper_function/on_generate_routes.dart';
import 'package:fruits_store/Features/Splash_Screen/presentation/views/splash_view.dart';

void main() {
  runApp(const FruitsStore());
}

class FruitsStore extends StatelessWidget {
  const FruitsStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashView.routeName,
      onGenerateRoute: onGeberateRoutes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
