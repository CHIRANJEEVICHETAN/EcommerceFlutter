
import 'package:avymart/features/customer/data/models/product_model.dart';
import 'package:avymart/features/customer/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class ProductCatalogScreen extends StatelessWidget {
  const ProductCatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
        id: const Uuid().v4(),
        name: 'Classic Leather Jacket',
        imageUrl: 'https://picsum.photos/id/10/400/400',
        price: 149.99,
      ),
      Product(
        id: const Uuid().v4(),
        name: 'Slim Fit Jeans',
        imageUrl: 'https://picsum.photos/id/20/400/400',
        price: 89.99,
      ),
      Product(
        id: const Uuid().v4(),
        name: 'White T-Shirt',
        imageUrl: 'https://picsum.photos/id/30/400/400',
        price: 29.99,
      ),
      Product(
        id: const Uuid().v4(),
        name: 'Black Boots',
        imageUrl: 'https://picsum.photos/id/40/400/400',
        price: 199.99,
      ),
      Product(
        id: const Uuid().v4(),
        name: 'Beanie Hat',
        imageUrl: 'https://picsum.photos/id/50/400/400',
        price: 19.99,
      ),
      Product(
        id: const Uuid().v4(),
        name: 'Sun Glasses',
        imageUrl: 'https://picsum.photos/id/60/400/400',
        price: 49.99,
      ),
       Product(
        id: const Uuid().v4(),
        name: 'Classic Leather Jacket',
        imageUrl: 'https://picsum.photos/id/11/400/400',
        price: 149.99,
      ),
      Product(
        id: const Uuid().v4(),
        name: 'Slim Fit Jeans',
        imageUrl: 'https://picsum.photos/id/21/400/400',
        price: 89.99,
      ),
      Product(
        id: const Uuid().v4(),
        name: 'White T-Shirt',
        imageUrl: 'https://picsum.photos/id/31/400/400',
        price: 29.99,
      ),
      Product(
        id: const Uuid().v4(),
        name: 'Black Boots',
        imageUrl: 'https://picsum.photos/id/41/400/400',
        price: 199.99,
      ),
      Product(
        id: const Uuid().v4(),
        name: 'Beanie Hat',
        imageUrl: 'https://picsum.photos/id/51/400/400',
        price: 19.99,
      ),
      Product(
        id: const Uuid().v4(),
        name: 'Sun Glasses',
        imageUrl: 'https://picsum.photos/id/61/400/400',
        price: 49.99,
      ),
    ];

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: const Text('Discover Products'),
              floating: true,
              pinned: true,
              actions: [
                IconButton(
                  icon: const Icon(Icons.shopping_cart_outlined),
                  onPressed: () {
                    // Navigate to cart screen
                  },
                ),
              ],
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(72.0),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for products...',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Theme.of(context).colorScheme.surfaceContainerHighest,
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: GridView.builder(
          padding: const EdgeInsets.all(12),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.75,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductCard(product: products[index]);
          },
        ),
      ),
    );
  }
}
