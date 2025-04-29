import 'package:flutter/material.dart';

class UttapamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Uttapam'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('images/img_15.png', // Replace with the actual image path
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200),
              SizedBox(height: 20),
              Text(
                'Uttapam Recipe',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Ingredients:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '• 2 cups rice\n'
                    '• 1 cup urad dal\n'
                    '• 1/2 cup finely chopped onions\n'
                    '• 1/2 cup finely chopped tomatoes\n'
                    '• 1/2 cup finely chopped bell peppers\n'
                    '• Salt to taste\n'
                    '• Oil for cooking\n',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Instructions:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '1. Soak rice and urad dal for 4-5 hours and grind to a smooth batter.\n'
                    '2. Ferment the batter overnight.\n'
                    '3. Pour a ladle of batter onto a hot tawa and spread slightly.\n'
                    '4. Sprinkle chopped onions, tomatoes, and bell peppers on top.\n'
                    '5. Cook until both sides are golden brown and serve hot.\n',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}