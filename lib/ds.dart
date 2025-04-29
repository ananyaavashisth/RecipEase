// ds.dart
import 'package:flutter/material.dart';

class DsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dim Sum'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('images/img_24.png'), // Replace with actual image path
              SizedBox(height: 16),
              Text(
                'Vegetarian Dim Sum Recipe',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Ingredients:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '- 1 cup mushrooms, finely chopped\n'
                    '- 1 cup cabbage, finely shredded\n'
                    '- 1/2 cup carrots, finely grated\n'
                    '- 1/2 cup green onions, finely chopped\n'
                    '- 2 cloves garlic, minced\n'
                    '- 1 tablespoon soy sauce\n'
                    '- 1 teaspoon sesame oil\n'
                    '- Wonton wrappers\n'
                    '- Salt and pepper to taste\n'
                    '- Dipping sauce (soy sauce, vinegar, chili oil)',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Instructions:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '1. In a bowl, mix the mushrooms, cabbage, carrots, green onions, garlic, soy sauce, sesame oil, salt, and pepper.\n\n'
                    '2. Place a spoonful of the mixture in the center of each wonton wrapper.\n\n'
                    '3. Fold the wrapper and seal the edges with water.\n\n'
                    '4. Steam the dim sum for about 10 minutes or until cooked through.\n\n'
                    '5. Serve with dipping sauce and enjoy your homemade vegetarian Dim Sum!',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}