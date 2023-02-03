import 'package:flutter/material.dart';
import 'package:todo_app/widgets/category_icon.dart';

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: GridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        shrinkWrap: true,
        childAspectRatio: 0.75,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          CategoryIcon(icon: Icons.computer, label: 'Electronics'),
          CategoryIcon(icon: Icons.computer, label: 'Electronics'),
          CategoryIcon(icon: Icons.computer, label: 'Electronics'),
          CategoryIcon(icon: Icons.computer, label: 'Electronics'),
          CategoryIcon(icon: Icons.computer, label: 'Electronics'),
          CategoryIcon(icon: Icons.computer, label: 'Electronics'),
          CategoryIcon(icon: Icons.computer, label: 'Electronics'),
          CategoryIcon(icon: Icons.computer, label: 'Electronics'),
        ],
      ),
    );
  }
}
