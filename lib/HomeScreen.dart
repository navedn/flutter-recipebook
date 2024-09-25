import 'package:flutter/material.dart';
import 'DetailsScreen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      'imageAsset': 'Pancakes.jpg',
      'preptime': '5 minutes',
      'cooktime': '10 minutes',
      'servingsize': '8 servings',
      'title': 'Good Old-Fashioned Pancakes',
      'ingredients': 'Flour, Baking Powder, Sugar, Salt, Milk, Butter, Egg',
      'instructions':
          '1. Sift flour, baking powder, sugar, and salt together in a large bowl.\n2. Make a well in the center and add milk, melted butter, and egg; mix until smooth.\n3. Heat a lightly oiled griddle or pan over medium-high heat. Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake.\n4. Cook until bubbles form and the edges are dry, about 2 to 3 minutes. Flip and cook until browned on the other side. Repeat with remaining batter.'
    },
    {
      'imageAsset': 'VegetableStirFry.jpg',
      'preptime': '10 minutes',
      'cooktime': '5 minutes',
      'servingsize': '6 servings',
      'title': 'Vegetable Stir Fry',
      'ingredients':
          'Olive Oil, Bell Peppers, Sugar Snap Peas, Carrots, Mushrooms, Broccoli, Baby Corn, Water Chestnuts, Soy Sauce, Garlic Cloves, Brown Sugar, Sesame Oil, Chicken Broth, Cornstarch',
      'instructions':
          '1. Add 1 tablespoon olive oil over medium-high heat in a wok or large skillet. Add bell pepper, peas, carrots, mushrooms, broccoli, baby corn, and water chestnuts. Sauté 2-3 minutes until veggies are almost tender.\n2. In a small bowl, whisk together soy sauce, garlic, brown sugar, sesame oil, chicken broth, and cornstarch.\n3. Pour over veggies and cook until the sauce has thickened.'
    },
    {
      'imageAsset': 'SesameChicken.jpg',
      'preptime': '7 minutes',
      'cooktime': '15 minutes',
      'servingsize': '6 servings',
      'title': 'Sesame Chicken',
      'ingredients':
          'Cornstarch, Salt, Black Pepper, Boneless Chicken Breasts, Vegetable Oil, Honey, Soy Sauce, Rice Vinegar, Chile-Garlic Sauce, Garlic Cloves, Ginger Root, Sesame Oil, Sesame Seeds, Green Onions',
      'instructions':
          '1. Whisk cornstarch, salt, and black pepper together in a large bowl; add chicken and toss to coat.\n2. Heat oil in a skillet over medium-high heat. Fry chicken in batches, turning occasionally, until lightly browned, about 5 minutes.\n3. Whisk together honey, soy sauce, rice vinegar, chile-garlic sauce, garlic, ginger, sesame oil, and 1 tablespoon sesame seeds in a small bowl.\n4. Pour sauce over chicken in the skillet; toss to coat chicken. Reduce heat to medium-low; simmer until sauce thickens and chicken is no longer pink in the center and the juices run clear, about two minutes.\n5. Sprinkle with remaining 1 tablespoon sesame seeds and chopped green onions.'
    },
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 126, 195),
      appBar: AppBar(
        title: const Text(
          'Recipe Book',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(247, 37, 133, 1),
      ),
      body: Column(
        children: [
          const SizedBox(
              height: 2), // Add space between the AppBar and the first tile
          Expanded(
            child: ListView.builder(
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 4), // Space between tiles
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black, width: 2.5), // Solid black border
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                  child: ListTile(
                    title: Text(recipes[index]['title']!),
                    tileColor: const Color.fromRGBO(249, 189, 255, 1),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailsScreen(recipe: recipes[index]),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
