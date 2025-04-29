import 'package:flutter/material.dart';

class PastaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pasta'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/img_20.png', // Replace with the actual image path
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
              SizedBox(height: 20),
              Text(
                'Pasta Recipe',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Ingredients:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '• 1 pound pasta\n'
                    '• 2 tablespoons olive oil\n'
                    '• 2 cloves garlic, minced\n'
                    '• 1 (28 ounce) can crushed tomatoes\n'
                    '• 1/2 cup grated Parmesan cheese\n'
                    '• 1/4 cup chopped fresh basil\n'
                    '• Salt and pepper to taste\n',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Instructions:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '1. Cook pasta according to package instructions. Drain and set aside.\n'
                    '2. In a large skillet, heat olive oil over medium heat.\n'
                    '3. Add garlic and cook until fragrant.\n'
                    '4. Stir in crushed tomatoes and simmer for 15 minutes.\n'
                    '5. Add cooked pasta to the skillet and toss to coat.\n'
                    '6. Stir in Parmesan cheese and basil. Season with salt and pepper.\n'
                    '7. Serve hot and enjoy.\n',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}