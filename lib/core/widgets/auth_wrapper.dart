import 'package:avymart/core/models/role_model.dart';
import 'package:avymart/core/routes/app_router.dart';
import 'package:avymart/core/services/auth_service.dart';
import 'package:avymart/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class AuthWrapper extends StatefulWidget {
  const AuthWrapper({super.key});

  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  final AuthService _authService = GetIt.instance<AuthService>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        if (snapshot.hasData && snapshot.data != null) {
          return FutureBuilder<Role?>(
            future: _authService.getUserRole(snapshot.data!.uid),
            builder: (context, roleSnapshot) {
              if (roleSnapshot.connectionState == ConnectionState.waiting) {
                return const Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }

              if (roleSnapshot.hasData && roleSnapshot.data != null) {
                _navigateToRoleScreen(roleSnapshot.data!);
                return const Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                ); 
              }
              return const OnboardingScreen();
            },
          );
        }
        return const OnboardingScreen();
      },
    );
  }

  void _navigateToRoleScreen(Role role) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      switch (role) {
        case Role.admin:
          Navigator.pushReplacementNamed(context, AppRouter.adminRoute);
          break;
        case Role.seller:
          Navigator.pushReplacementNamed(context, AppRouter.sellerRoute);
          break;
        case Role.customer:
          Navigator.pushReplacementNamed(context, AppRouter.customerRoute);
          break;
      }
    });
  }
}
