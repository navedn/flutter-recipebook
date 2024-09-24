import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map<String, String> recipe;

  const DetailsScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe['title']!),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (recipe.containsKey('imageAsset') &&
                recipe['imageAsset']!.isNotEmpty)
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                child: Image.asset(
                  'assets/images/${recipe['imageAsset']}', // Use the asset image path
                  fit: BoxFit.cover,
                  width: 200,
                  height: 200, // Adjust the height as needed
                ),
              ),
            const Text('Prep Time',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Text(
              recipe['preptime']!,
            ),
            const SizedBox(height: 8),
            const Text('Cook Time',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Text(
              recipe['cooktime']!,
            ),
            const SizedBox(height: 8),
            const Text('Serving Size',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Text(recipe['servingsize']!),
            const SizedBox(height: 8),
            const Text('Ingredients',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Text(recipe['ingredients']!),
            const SizedBox(height: 16),
            const Text('Instructions',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(recipe['instructions']!),
          ],
        ),
      ),
    );
  }
}
