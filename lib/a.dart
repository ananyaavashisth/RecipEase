import 'package:flutter/material.dart';

class AppamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appam'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('images/img_16.png', // Replace with the actual image path
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200),
              SizedBox(height: 20),
              Text(
                'Appam Recipe',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Ingredients:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '• 1 cup raw rice\n'
                    '• 1/2 cup grated coconut\n'
                    '• 1/4 cup cooked rice\n'
                    '• 1/2 tsp active dry yeast\n'
                    '• 1 tbsp sugar\n'
                    '• Salt to taste\n'
                    '• Water as needed\n',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Instructions:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '1. Soak raw rice for 4-5 hours.\n'
                    '2. Grind the soaked rice with grated coconut and cooked rice to a smooth batter.\n'
                    '3. Dissolve yeast and sugar in a little warm water and add to the batter.\n'
                    '4. Ferment the batter overnight.\n'
                    '5. Add salt and water to get a pourable consistency.\n'
                    '6. Pour a ladle of batter into a hot appam pan and swirl to spread the batter.\n'
                    '7. Cover and cook until the edges are crispy and the center is cooked through.\n'
                    '8. Serve hot with stew or curry.\n',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}