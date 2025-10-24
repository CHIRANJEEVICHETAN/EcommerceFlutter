import 'package:flutter/material.dart';

class MerchantScreen extends StatelessWidget {
  const MerchantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Merchant Dashboard'),
      ),
      body: const Center(
        child: Text('Welcome, Merchant!'),
      ),
    );
  }
}
