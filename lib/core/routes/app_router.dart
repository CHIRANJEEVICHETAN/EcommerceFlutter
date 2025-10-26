
import 'package:avymart/features/admin/presentation/screens/admin_screen.dart';
import 'package:avymart/features/auth/presentation/screens/phone_sign_in_screen.dart';
import 'package:avymart/features/customer/presentation/widgets/customer_scaffold.dart';
import 'package:avymart/features/merchant/presentation/screens/merchant_screen.dart';
import 'package:flutter/material.dart';
import 'package:avymart/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:avymart/features/auth/presentation/screens/login_screen.dart';
import 'package:avymart/features/home/presentation/screens/home_screen.dart';
import 'package:avymart/features/auth/presentation/screens/signup_screen.dart';
import 'package:avymart/features/seller/presentation/screens/seller_screen.dart';

class AppRouter {
  static const String initialRoute = '/';
  static const String loginRoute = '/login';
  static const String homeRoute = '/home';
  static const String signupRoute = '/signup';
  static const String phoneSignInRoute = '/phone-sign-in';
  static const String adminRoute = '/admin';
  static const String merchantRoute = '/merchant';
  static const String customerRoute = '/customer';
  static const String sellerRoute = '/seller';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case initialRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case signupRoute:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case phoneSignInRoute:
        return MaterialPageRoute(builder: (_) => const PhoneSignInScreen());
      case adminRoute:
        return MaterialPageRoute(builder: (_) => const AdminScreen());
      case merchantRoute:
        return MaterialPageRoute(builder: (_) => const MerchantScreen());
      case customerRoute:
        return MaterialPageRoute(builder: (_) => const CustomerScaffold());
      case sellerRoute:
        return MaterialPageRoute(builder: (_) => const SellerScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
