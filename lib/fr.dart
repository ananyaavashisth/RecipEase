// fr.dart
import 'package:flutter/material.dart';

class FrPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fried Rice'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('images/img_26.png'), // Replace with actual image path
              SizedBox(height: 16),
              Text(
                'Fried Rice Recipe',
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
                '- 2 cups cooked rice (preferably day-old)\n'
                    '- 2 tablespoons vegetable oil\n'
                    '- 1 onion, diced\n'
                    '- 2 cloves garlic, minced\n'
                    '- 1 cup mixed vegetables (peas, carrots, corn)\n'
                    '- 2 eggs, beaten\n'
                    '- 2 tablespoons soy sauce\n'
                    '- 1 tablespoon oyster sauce\n'
                    '- 1 teaspoon sesame oil\n'
                    '- Salt and pepper to taste\n'
                    '- Green onions for garnish',
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
                '1. Heat vegetable oil in a large pan or wok over medium-high heat.\n\n'
                    '2. Add the onion and garlic, and sauté until fragrant.\n\n'
                    '3. Add the mixed vegetables and cook until they are tender.\n\n'
                    '4. Push the vegetables to the side of the pan and add the beaten eggs, scrambling them until cooked.\n\n'
                    '5. Add the cooked rice to the pan, breaking up any clumps.\n\n'
                    '6. Add the soy sauce, oyster sauce, and sesame oil, and stir to combine.\n\n'
                    '7. Season with salt and pepper to taste.\n\n'
                    '8. Garnish with green onions before serving.\n\n'
                    '9. Serve hot and enjoy your homemade Fried Rice!',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}