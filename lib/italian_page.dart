import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pz.dart'; // Import PizzaPage
import 'la.dart'; // Import LasagnaPage
import 's.dart'; // Import SpaghettiPage
import 'p.dart'; // Import PastaPage
import 'ra.dart'; // Import RavioliPage

class ItalianPage extends StatefulWidget {
  @override
  _ItalianPageState createState() => _ItalianPageState();
}

class _ItalianPageState extends State<ItalianPage> {
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
    if (recipeName == 'Pizza') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PizzaPage()),
      );
    } else if (recipeName == 'Lasagna') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LasagnaPage()),
      );
    } else if (recipeName == 'Spaghetti') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SpaghettiPage()),
      );
    } else if (recipeName == 'Pasta') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PastaPage()),
      );
    } else if (recipeName == 'Ravioli') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RavioliPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Italian'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildRecipeButton(
                context,
                'images/img_18.png', // Replace with actual image path
                'Pizza',
              ),
              SizedBox(height: 20),
              _buildRecipeButton(
                context,
                'images/img_19.png', // Replace with actual image path
                'Lasagna',
              ),
              SizedBox(height: 20),
              _buildRecipeButton(
                context,
                'images/img_20.png', // Replace with actual image path
                'Pasta',
              ),
              SizedBox(height: 20),
              _buildRecipeButton(
                context,
                'images/img_21.png', // Replace with actual image path
                'Spaghetti',
              ),
              SizedBox(height: 20),
              _buildRecipeButton(
                context,
                'images/img_22.png', // Replace with actual image path
                'Ravioli',
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
