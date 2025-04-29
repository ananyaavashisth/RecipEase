import 'package:flutter/material.dart';

class DalMakhaniPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dal Makhani Recipe'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 16.0),
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'images/img_12.png', // Replace with your actual image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              'Ingredients:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('- Whole black lentils (sabut urad dal)'),
            Text('- Red kidney beans (rajma)'),
            Text('- Onions, tomatoes, ginger, garlic'),
            Text('- Spices (cumin seeds, garam masala, turmeric)'),
            Text('- Fresh cream, butter'),
            SizedBox(height: 20),
            Text(
              'Instructions:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('1. Soak urad dal and rajma overnight.'),
            Text('2. Pressure cook with water until soft.'),
            Text('3. Saute onions, tomatoes, ginger, garlic.'),
            Text('4. Add cooked dal, spices, and simmer.'),
            Text('5. Finish with fresh cream and butter.'),
          ],
        ),
      ),
    );
  }
}
