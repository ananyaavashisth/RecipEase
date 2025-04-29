import 'package:flutter/material.dart';

class SpaghettiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spaghetti'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/img_21.png', // Replace with the actual image path
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
              SizedBox(height: 20),
              Text(
                'Spaghetti Recipe',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Ingredients:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '• 1 pound spaghetti\n'
                    '• 1/4 cup olive oil\n'
                    '• 4 cloves garlic, minced\n'
                    '• 1/4 teaspoon red pepper flakes\n'
                    '• 1/4 cup chopped parsley\n'
                    '• 1/2 cup grated Parmesan cheese\n'
                    '• Salt and pepper to taste\n',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Instructions:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '1. Cook spaghetti according to package instructions. Drain and set aside.\n'
                    '2. In a large skillet, heat olive oil over medium heat.\n'
                    '3. Add garlic and red pepper flakes. Cook until fragrant.\n'
                    '4. Toss the cooked spaghetti in the skillet with garlic and oil.\n'
                    '5. Stir in chopped parsley and Parmesan cheese. Season with salt and pepper.\n'
                    '6. Serve hot and enjoy.\n',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}