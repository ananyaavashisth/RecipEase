import 'package:flutter/material.dart';

class CholeBhaturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chole Bhature Recipe'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/img_8.png', // Replace with actual image path
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Text(
                'Chole Bhature',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Ingredients:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '- 1 cup chickpeas (chole)\n'
                    '- 2 cups all-purpose flour (maida)\n'
                    '- 1/2 cup yogurt (dahi)\n'
                    '- 1 tsp baking powder\n'
                    '- 1/2 tsp baking soda\n'
                    '- 2 onions, chopped\n'
                    '- 2 tomatoes, chopped\n'
                    '- 2 green chilies, chopped\n'
                    '- 1 tbsp ginger-garlic paste\n'
                    '- 1 tsp cumin seeds\n'
                    '- 1 tsp turmeric powder\n'
                    '- 1 tsp red chili powder\n'
                    '- 1 tsp garam masala\n'
                    '- Salt to taste\n'
                    '- Oil for frying\n'
                    '- Fresh coriander leaves for garnish',
              ),
              SizedBox(height: 16),
              Text(
                'Instructions:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '1. Soak chickpeas overnight and boil them until soft.\n'
                    '2. In a bowl, mix flour, baking powder, baking soda, yogurt, and a little water to form a dough. Let it rest for 2 hours.\n'
                    '3. Heat oil in a pan and add cumin seeds. When they splutter, add onions and sauté until golden brown.\n'
                    '4. Add ginger-garlic paste, green chilies, and tomatoes. Cook until tomatoes are soft.\n'
                    '5. Add turmeric, red chili powder, garam masala, and salt. Cook for a few minutes.\n'
                    '6. Add boiled chickpeas and cook for 10-15 minutes. Garnish with fresh coriander leaves.\n'
                    '7. Roll the dough into small balls and flatten them. Deep fry in hot oil until golden brown.\n'
                    '8. Serve hot with chole.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
