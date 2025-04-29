// cp.dart
import 'package:flutter/material.dart';

class CpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chili Potato'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('images/img_27.png'), // Replace with actual image path
              SizedBox(height: 16),
              Text(
                'Chili Potato Recipe',
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
                '- 4 large potatoes, peeled and cut into fries\n'
                    '- 2 tablespoons cornflour\n'
                    '- 2 tablespoons vegetable oil\n'
                    '- 1 onion, thinly sliced\n'
                    '- 2 cloves garlic, minced\n'
                    '- 1 bell pepper, thinly sliced\n'
                    '- 2 tablespoons soy sauce\n'
                    '- 1 tablespoon tomato ketchup\n'
                    '- 1 tablespoon chili sauce\n'
                    '- 1 teaspoon vinegar\n'
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
                '1. Boil the potato fries for 5 minutes, then drain and let them dry.\n\n'
                    '2. Toss the fries with cornflour to coat them evenly.\n\n'
                    '3. Heat vegetable oil in a pan and fry the potato fries until they are golden and crispy.\n\n'
                    '4. In another pan, heat a tablespoon of oil and sauté the onion, garlic, and bell pepper until they are soft.\n\n'
                    '5. Add the soy sauce, tomato ketchup, chili sauce, and vinegar, and stir to combine.\n\n'
                    '6. Add the fried potato fries to the pan and toss to coat them with the sauce.\n\n'
                    '7. Season with salt and pepper to taste.\n\n'
                    '8. Garnish with green onions before serving.\n\n'
                    '9. Serve hot and enjoy your homemade Chili Potato!',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}