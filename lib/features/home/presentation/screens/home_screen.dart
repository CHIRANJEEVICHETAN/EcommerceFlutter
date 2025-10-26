
import 'package:avymart/core/routes/app_router.dart';
import 'package:avymart/core/services/auth_service.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = AuthService();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await authService.signOut();
              if (!context.mounted) return;
              Navigator.pushReplacementNamed(context, AppRouter.loginRoute);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to Avy!'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final user = authService.getCurrentUser();
                if (user != null) {
                  final role = await authService.getUserRole(user.uid);
                  if (!context.mounted) return;
                  if (role != null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Your role is: $role')),
                    );
                  }
                }
              },
              child: const Text('Check my role'),
            ),
          ],
        ),
      ),
    );
  }
}
