import 'package:flutter/material.dart';
import 'package:todo_app/widgets/categories_grid.dart';
import 'package:todo_app/widgets/product_card.dart';
import 'package:todo_app/widgets/promo_banner.dart';
import 'package:todo_app/widgets/header.dart';
import 'package:todo_app/widgets/search_bar.dart';
import 'package:todo_app/widgets/section_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Dev App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shrinkWrap: true,
          children: [
            const Header(),
            const SizedBox(height: 16),
            const SearchBar(),
            const SectionTitle(title: 'Special Offers'),
            const PromoBanner(),
            const CategoriesGrid(),
            const SectionTitle(title: 'Most Popular'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: List.generate(
                  10,
                  (index) {
                    if (index == 0) {
                      return ActionChip(
                          onPressed: () {}, label: const Text('All'));
                    }

                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: ActionChip(
                        onPressed: () {},
                        label: Text(
                          'Category $index',
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: GridView.count(
                shrinkWrap: true,
                childAspectRatio: 0.65,
                crossAxisSpacing: 16,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                children: const [
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
