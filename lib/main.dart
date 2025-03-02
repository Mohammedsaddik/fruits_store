import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_store/Core/Services/shared_prefrences.dart';
import 'package:fruits_store/Core/healper_function/on_generate_routes.dart';
import 'package:fruits_store/Features/Splash_Screen/presentation/views/splash_view.dart';
import 'package:fruits_store/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  runApp(const FruitsStore());
}

class FruitsStore extends StatelessWidget {
  const FruitsStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: Locale("ar"),
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
