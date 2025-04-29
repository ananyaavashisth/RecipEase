// gkh.dart
import 'package:flutter/material.dart';

class GajarKaHalwaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gajar Ka Halwa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Gajar Ka Halwa Recipe',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Image.asset('images/img_11.png'), // Replace with actual image path
              SizedBox(height: 20),
              Text(
                'Ingredients:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('- 1 kg Carrots\n- 1 litre Milk\n- 250 grams Sugar\n- 4 tablespoons Ghee\n- 10-12 Cashews\n- 10-12 Almonds\n- 10-12 Raisins\n- 1/2 teaspoon Cardamom powder'),
              SizedBox(height: 20),
              Text(
                'Instructions:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                  '1. Wash and grate the carrots.\n'
                      '2. In a heavy-bottomed pan, add grated carrots and milk.\n'
                      '3. Cook on a low flame until the milk evaporates.\n'
                      '4. Add sugar and ghee. Mix well and cook for another 10-15 minutes.\n'
                      '5. In a small pan, heat some ghee and fry the cashews, almonds, and raisins until golden brown.\n'
                      '6. Add the fried nuts and raisins to the halwa. Mix well.\n'
                      '7. Finally, add cardamom powder and mix.\n'
                      '8. Serve hot or cold as desired.'
              ),
            ],
          ),
        ),
      ),
    );
  }
}
