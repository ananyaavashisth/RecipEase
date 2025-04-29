import 'package:flutter/material.dart';

class RavioliPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ravioli'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/img_22.png', // Replace with the actual image path
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
              SizedBox(height: 20),
              Text(
                'Ravioli Recipe',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Ingredients:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '• 1 pound ravioli\n'
                    '• 1 cup ricotta cheese\n'
                    '• 1/2 cup grated Parmesan cheese\n'
                    '• 1/4 cup chopped fresh basil\n'
                    '• 1/4 cup chopped fresh parsley\n'
                    '• 2 cups marinara sauce\n'
                    '• 1 cup shredded mozzarella cheese\n'
                    '• Salt and pepper to taste\n',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Instructions:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '1. Cook ravioli according to package instructions. Drain and set aside.\n'
                    '2. In a mixing bowl, combine ricotta, Parmesan, basil, parsley, salt, and pepper.\n'
                    '3. Preheat the oven to 350°F (175°C).\n'
                    '4. Spread 1 cup of marinara sauce on the bottom of a baking dish.\n'
                    '5. Place a layer of cooked ravioli over the sauce.\n'
                    '6. Spoon half of the ricotta mixture over the ravioli.\n'
                    '7. Sprinkle with mozzarella cheese. Repeat layers.\n'
                    '8. Top with remaining marinara sauce and mozzarella cheese.\n'
                    '9. Cover with foil and bake for 30 minutes.\n'
                    '10. Remove foil and bake for an additional 10 minutes, or until cheese is bubbly.\n'
                    '11. Let cool for 10 minutes before serving.\n',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
