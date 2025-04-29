import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'shp.dart'; // Import the Shahi Paneer page
import 'gkh.dart'; // Import the Gajar Ka Halwa page
import 'cb.dart'; // Import the Chole Bhature page
import 'pt.dart'; // Import the Paneer Tikka page
import 'dm.dart'; // Import the Dal Makhani page

class NorthIndianPage extends StatefulWidget {
  @override
  _NorthIndianPageState createState() => _NorthIndianPageState();
}

class _NorthIndianPageState extends State<NorthIndianPage> {
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
    });
    _saveFavorites();
  }

  void navigateToRecipe(String recipeName) {
    if (recipeName == 'Shahi Paneer') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ShahiPaneerPage()),
      );
    } else if (recipeName == 'Gajar Ka Halwa') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => GajarKaHalwaPage()),
      );
    } else if (recipeName == 'Chole Bhature') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CholeBhaturePage()),
      );
    } else if (recipeName == 'Paneer Tikka') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PaneerTikkaPage()),
      );
    } else if (recipeName == 'Dal Makhani') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DalMakhaniPage()),
      );
    }
  }

  String _getImagePath(String recipeName) {
    switch (recipeName) {
      case 'Shahi Paneer':
        return 'images/img_10.png';
      case 'Gajar Ka Halwa':
        return 'images/img_11.png';
      case 'Chole Bhature':
        return 'images/img_8.png';
      case 'Paneer Tikka':
        return 'images/img_9.png';
      case 'Dal Makhani':
        return 'images/img_12.png';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('North Indian'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildRecipeButton(
                context,
                'images/img_10.png', // Replace with actual image path
                'Shahi Paneer',
              ),
              SizedBox(height: 20),
              _buildRecipeButton(
                context,
                'images/img_11.png', // Replace with actual image path
                'Gajar Ka Halwa',
              ),
              SizedBox(height: 20),
              _buildRecipeButton(
                context,
                'images/img_8.png', // Replace with actual image path
                'Chole Bhature',
              ),
              SizedBox(height: 20),
              _buildRecipeButton(
                context,
                'images/img_9.png', // Replace with actual image path
                'Paneer Tikka',
              ),
              SizedBox(height: 20),
              _buildRecipeButton(
                context,
                'images/img_12.png', // Replace with actual image path
                'Dal Makhani',
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
