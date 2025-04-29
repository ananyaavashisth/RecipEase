// shahi_paneer.dart
import 'package:flutter/material.dart';

class ShahiPaneerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shahi Paneer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Shahi Paneer',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Image.asset('images/img_10.png'), // Replace with actual image path
              SizedBox(height: 20),
              Text(
                'Ingredients:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '- 200g paneer\n- 2 onions\n- 1 cup cream\n- 2 tomatoes\n- 1 tsp ginger-garlic paste\n- Spices\n- Salt to taste\n- Oil for cooking',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Instructions:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '1. Cut the paneer into cubes.\n2. Heat oil in a pan and sauté onions.\n3. Add ginger-garlic paste and tomatoes.\n4. Add spices and cook.\n5. Add paneer and cream.\n6. Cook for 10 minutes.\n7. Serve hot with naan or rice.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
