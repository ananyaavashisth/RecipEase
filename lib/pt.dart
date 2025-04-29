import 'package:flutter/material.dart';

class PaneerTikkaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paneer Tikka'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('images/img_9.png'), // Replace with actual image path
              SizedBox(height: 20),
              Text(
                'Paneer Tikka Recipe',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Ingredients:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('- 250 grams paneer, cut into cubes'),
              Text('- 1 cup thick yogurt'),
              Text('- 1 tablespoon ginger-garlic paste'),
              Text('- 1 teaspoon red chili powder'),
              Text('- 1 teaspoon turmeric powder'),
              Text('- 1 teaspoon garam masala'),
              Text('- 1 teaspoon chaat masala'),
              Text('- 1 tablespoon lemon juice'),
              Text('- Salt to taste'),
              Text('- 1 tablespoon oil'),
              Text('- 1 capsicum, cut into cubes'),
              Text('- 1 onion, cut into cubes'),
              Text('- 1 tomato, cut into cubes'),
              SizedBox(height: 20),
              Text(
                'Instructions:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('1. In a large mixing bowl, combine yogurt, ginger-garlic paste, red chili powder, turmeric powder, garam masala, chaat masala, lemon juice, and salt. Mix well.'),
              Text('2. Add paneer cubes, capsicum, onion, and tomato to the marinade. Toss gently to coat the paneer and vegetables with the marinade.'),
              Text('3. Cover the bowl and let it marinate for at least 1 hour in the refrigerator.'),
              Text('4. Preheat the grill or oven to 200°C (400°F).'),
              Text('5. Thread the marinated paneer and vegetables onto skewers.'),
              Text('6. Brush the skewers with oil and place them on the grill or in the oven.'),
              Text('7. Grill or bake for 15-20 minutes, turning occasionally, until the paneer and vegetables are cooked and slightly charred.'),
              Text('8. Serve hot with mint chutney and lemon wedges.'),
            ],
          ),
        ),
      ),
    );
  }
}
