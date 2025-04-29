import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'cm.dart'; // Import the CmPage
import 'ds.dart'; // Import the DsPage
import 'sp.dart'; // Import the SpPage
import 'fr.dart'; // Import the FrPage
import 'cp.dart'; // Import the CpPage

class ChinesePage extends StatefulWidget {
  @override
  _ChinesePageState createState() => _ChinesePageState();
}

class _ChinesePageState extends State<ChinesePage> {
  List<String> favoriteRecipes = [];
  Map<String, String> favoriteDetails = {};

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      favoriteRecipes = prefs.getStringList('favoriteRecipes') ?? [];
      String? favoriteDetailsString = prefs.getString('favoriteDetails');
      if (favoriteDetailsString != null) {
        favoriteDetails = Map<String, String>.from(json.decode(favoriteDetailsString));
      }
    });
  }

  Future<void> _saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList('favoriteRecipes', favoriteRecipes);
    prefs.setString('favoriteDetails', json.encode(favoriteDetails));
  }

  void toggleFavorite(String recipeName, String imagePath) {
    setState(() {
      if (favoriteRecipes.contains(recipeName)) {
        favoriteRecipes.remove(recipeName);
        favoriteDetails.remove(recipeName);
      } else {
        favoriteRecipes.add(recipeName);
        favoriteDetails[recipeName] = imagePath;
      }
      _saveFavorites();
    });
  }

  void navigateToRecipe(String recipeName) {
    if (recipeName == 'Chow mein') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CmPage()),
      );
    } else if (recipeName == 'Dim Sum') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DsPage()),
      );
    } else if (recipeName == 'Spring Rolls') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SpPage()),
      );
    } else if (recipeName == 'Fried Rice') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => FrPage()),
      );
    } else if (recipeName == 'Chili Potato') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CpPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chinese'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildRecipeButton(
                context,
                'images/img_23.png', // Replace with actual image path
                'Chow mein',
              ),
              SizedBox(height: 20),
              _buildRecipeButton(
                context,
                'images/img_24.png', // Replace with actual image path
                'Dim Sum',
              ),
              SizedBox(height: 20),
              _buildRecipeButton(
                context,
                'images/img_25.png', // Replace with actual image path
                'Spring Rolls',
              ),
              SizedBox(height: 20),
              _buildRecipeButton(
                context,
                'images/img_26.png', // Replace with actual image path
                'Fried Rice',
              ),
              SizedBox(height: 20),
              _buildRecipeButton(
                context,
                'images/img_27.png', // Replace with actual image path
                'Chili Potato',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRecipeButton(BuildContext context, String imagePath, String recipeName) {
    bool isFavorite = favoriteRecipes.contains(recipeName);

    return GestureDetector(
      onTap: () {
        navigateToRecipe(recipeName);
      },
      child: Container(
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
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200, // Adjust as per your requirement
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: IconButton(
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : Colors.grey,
                ),
                onPressed: () {
                  toggleFavorite(recipeName, imagePath);
                },
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Text(
                  recipeName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
