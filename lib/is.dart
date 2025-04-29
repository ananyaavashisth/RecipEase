import 'package:flutter/material.dart';

class IdliSambarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Idli Sambar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('images/img_13.png', // Replace with the actual image path
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200),
              SizedBox(height: 20),
              Text(
                'Idli Sambar Recipe',
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
                    '• Oil for greasing\n'
                    '• 1 cup toor dal\n'
                    '• 1/2 cup mixed vegetables\n'
                    '• 2 tomatoes\n'
                    '• 1 onion\n'
                    '• 1 tbsp sambar powder\n'
                    '• Tamarind pulp\n'
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
                    '3. Pour the batter into greased idli moulds and steam for 10-12 minutes.\n'
                    '4. For sambar, cook toor dal with mixed vegetables, tomatoes, and onions.\n'
                    '5. Add sambar powder, tamarind pulp, and salt, and cook until the vegetables are tender.\n'
                    '6. Garnish with fresh coriander leaves and serve hot with idlis.\n',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}