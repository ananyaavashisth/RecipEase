// sp.dart
import 'package:flutter/material.dart';

class SpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spring Rolls'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('images/img_25.png'), // Replace with actual image path
              SizedBox(height: 16),
              Text(
                'Vegetarian Spring Rolls Recipe',
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
                '- 1 package spring roll wrappers\n'
                    '- 1 cup cabbage, shredded\n'
                    '- 1 cup carrots, julienned\n'
                    '- 1 cup bean sprouts\n'
                    '- 1 bell pepper, thinly sliced\n'
                    '- 2 cloves garlic, minced\n'
                    '- 2 tablespoons soy sauce\n'
                    '- 1 tablespoon oyster sauce (vegetarian)\n'
                    '- 1 teaspoon sesame oil\n'
                    '- Oil for frying\n'
                    '- Dipping sauce (soy sauce, vinegar, sweet chili sauce)',
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
                '1. In a pan, cook the garlic, cabbage, carrots, bean sprouts, and bell pepper until the vegetables are soft.\n\n'
                    '2. Add soy sauce, vegetarian oyster sauce, and sesame oil, and mix well.\n\n'
                    '3. Remove from heat and let it cool.\n\n'
                    '4. Place a spoonful of the mixture on each spring roll wrapper and roll tightly, sealing the edges with water.\n\n'
                    '5. Heat oil in a pan and fry the spring rolls until golden brown.\n\n'
                    '6. Serve with dipping sauce and enjoy your homemade vegetarian Spring Rolls!',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}