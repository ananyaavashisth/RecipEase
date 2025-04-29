import 'package:flutter/material.dart';

class VadaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vada'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('images/img_17.png', // Replace with the actual image path
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200),
              SizedBox(height: 20),
              Text(
                'Vada Recipe',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Ingredients:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '• 1 cup urad dal\n'
                    '• 1/2 tsp cumin seeds\n'
                    '• 1/2 tsp black pepper\n'
                    '• 1/4 tsp asafoetida\n'
                    '• Salt to taste\n'
                    '• Oil for deep frying\n'
                    '• Fresh coriander leaves\n'
                    '• 2 green chilies\n'
                    '• 1 small onion\n',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Instructions:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '1. Soak urad dal for 4-5 hours and grind to a smooth batter.\n'
                    '2. Add cumin seeds, black pepper, asafoetida, salt, chopped coriander leaves, green chilies, and onion to the batter.\n'
                    '3. Heat oil in a deep fryer.\n'
                    '4. Shape the batter into small rounds and fry until golden brown.\n'
                    '5. Serve hot with chutney or sambar.\n',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}