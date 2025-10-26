
import 'package:avymart/core/services/auth_service.dart';
import 'package:avymart/features/customer/presentation/screens/cart_screen.dart';
import 'package:avymart/features/customer/presentation/screens/orders_screen.dart';
import 'package:avymart/features/customer/presentation/screens/product_catalog_screen.dart';
import 'package:avymart/features/customer/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class CustomerScaffold extends StatefulWidget {
  const CustomerScaffold({super.key});

  @override
  State<CustomerScaffold> createState() => _CustomerScaffoldState();
}

class _CustomerScaffoldState extends State<CustomerScaffold> {
  final AuthService _authService = AuthService();
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    ProductCatalogScreen(),
    CartScreen(),
    OrdersScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool isGuest = _authService.getCurrentUser() == null;

    if (isGuest) {
      return const Scaffold(
        body: ProductCatalogScreen(),
      );
    }

    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
