import 'package:flutter/material.dart';

class PizzaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pizza'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/img_18.png', // Replace with the actual image path
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
              SizedBox(height: 20),
              Text(
                'Pizza Recipe',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Ingredients:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '• 1 pizza base\n'
                    '• 1/2 cup pizza sauce\n'
                    '• 1 cup mozzarella cheese\n'
                    '• 1/4 cup sliced olives\n'
                    '• 1/4 cup sliced bell peppers\n'
                    '• 1/4 cup sliced onions\n'
                    '• 1/4 cup sliced mushrooms\n'
                    '• 1 tsp dried oregano\n'
                    '• 1 tsp dried basil\n'
                    '• Salt and pepper to taste\n',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Instructions:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '1. Preheat the oven to 200°C (400°F).\n'
                    '2. Spread the pizza sauce evenly over the pizza base.\n'
                    '3. Sprinkle mozzarella cheese on top of the sauce.\n'
                    '4. Arrange olives, bell peppers, onions, and mushrooms evenly on top.\n'
                    '5. Season with oregano, basil, salt, and pepper.\n'
                    '6. Bake in the preheated oven for 15-20 minutes or until the crust is golden brown and the cheese is melted and bubbly.\n'
                    '7. Slice and serve hot.\n',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
