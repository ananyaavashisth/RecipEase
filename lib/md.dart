import 'package:flutter/material.dart';

class MDPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Masala Dosa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('images/img_14.png', // Replace with the actual image path
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200),
              SizedBox(height: 20),
              Text(
                'Masala Dosa Recipe',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Ingredients:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '• 1 cup rice\n'
                    '• 1/2 cup urad dal\n'
                    '• 1/4 tsp fenugreek seeds\n'
                    '• Salt to taste\n'
                    '• Oil for cooking\n'
                    '• 2 potatoes\n'
                    '• 1 onion\n'
                    '• 1 green chili\n'
                    '• 1/4 tsp turmeric powder\n'
                    '• Salt to taste\n'
                    '• Fresh coriander leaves\n',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Instructions:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '1. Soak rice, urad dal, and fenugreek seeds for 4-5 hours.\n'
                    '2. Grind to a smooth paste and ferment overnight.\n'
                    '3. Prepare the masala by boiling potatoes and mashing them.\n'
                    '4. Sauté onions, green chili, and turmeric powder, then add mashed potatoes and salt.\n'
                    '5. Spread the dosa batter on a hot tawa and cook until crispy.\n'
                    '6. Place the potato filling inside the dosa and serve hot.\n',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}