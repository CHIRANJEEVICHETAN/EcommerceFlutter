
import 'package:avymart/core/widgets/auth_wrapper.dart';
import 'package:avymart/features/customer/data/models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:avymart/core/config/dependency_injection.dart';
import 'package:avymart/core/routes/app_router.dart';
import 'package:avymart/core/themes/dark_theme.dart';
import 'package:avymart/core/themes/light_theme.dart';
import 'package:avymart/firebase_options.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Enable App Check for both Web and Android
  await FirebaseAppCheck.instance.activate();

  setupServiceLocator();
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AvyMart',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const AuthWrapper(),
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
