import 'package:flutter/material.dart';

class LasagnaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lasagna'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/img_19.png', // Replace with the actual image path
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
              SizedBox(height: 20),
              Text(
                'Lasagna Recipe',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Ingredients:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '• 12 lasagna noodles\n'
                    '• 1 pound ground beef\n'
                    '• 1 onion, chopped\n'
                    '• 2 cloves garlic, minced\n'
                    '• 1 (28 ounce) can crushed tomatoes\n'
                    '• 2 cups ricotta cheese\n'
                    '• 2 cups mozzarella cheese, shredded\n'
                    '• 1/2 cup grated Parmesan cheese\n'
                    '• 2 tablespoons chopped fresh basil\n'
                    '• 2 tablespoons chopped fresh oregano\n'
                    '• Salt and pepper to taste\n',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Instructions:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '1. Preheat the oven to 375°F (190°C).\n'
                    '2. Cook lasagna noodles according to package instructions.\n'
                    '3. In a large skillet, cook ground beef, onion, and garlic over medium heat until browned.\n'
                    '4. Stir in crushed tomatoes, basil, oregano, salt, and pepper. Simmer for 30 minutes.\n'
                    '5. In a mixing bowl, combine ricotta, 1 1/2 cups mozzarella, and Parmesan.\n'
                    '6. Spread a thin layer of meat sauce in the bottom of a 9x13 inch baking dish.\n'
                    '7. Layer with noodles, ricotta mixture, and meat sauce. Repeat layers.\n'
                    '8. Top with remaining mozzarella cheese.\n'
                    '9. Bake in preheated oven for 30 minutes or until cheese is melted and bubbly.\n'
                    '10. Let cool for 10 minutes before serving.\n',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}