import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Import your recipe pages
import 'md.dart'; // Masala Dosa Page
import 'u.dart'; // Uttapam Page
import 'is.dart'; // Idli Sambar Page
import 'v.dart'; // Vada Page
import 'a.dart'; // Appam Page
import 'cm.dart'; // Chow Mein Page
import 'ds.dart'; // Dim Sum Page
import 'sp.dart'; // Spring Rolls Page
import 'fr.dart'; // Fried Rice Page
import 'cp.dart'; // Chili Potato Page
import 'pz.dart'; // Pizza Page
import 'la.dart'; // Lasagna Page
import 's.dart'; // Spaghetti Page
import 'p.dart'; // Pasta Page
import 'ra.dart'; // Ravioli Page
import 'shp.dart'; // Shahi Paneer Page
import 'gkh.dart'; // Gajar Ka Halwa Page
import 'cb.dart'; // Chole Bhature Page
import 'pt.dart'; // Paneer Tikka Page
import 'dm.dart'; // Dal Makhani Page

class FavouritesPage extends StatefulWidget {
  @override
  _FavouritesPageState createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
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

  void navigateToRecipe(String recipeName) {
    final pages = {
      'Masala Dosa': MDPage(),
      'Uttapam': UttapamPage(),
      'Idli Sambar': IdliSambarPage(),
      'Vada': VadaPage(),
      'Appam': AppamPage(),
      'Chow mein': CmPage(),
      'Dim Sum': DsPage(),
      'Spring Rolls': SpPage(),
      'Fried Rice': FrPage(),
      'Chili Potato': CpPage(),
      'Pizza': PizzaPage(),
      'Lasagna': LasagnaPage(),
      'Pasta': PastaPage(),
      'Spaghetti': SpaghettiPage(),
      'Ravioli': RavioliPage(),
      'Shahi Paneer': ShahiPaneerPage(),
      'Gajar Ka Halwa': GajarKaHalwaPage(),
      'Chole Bhature': CholeBhaturePage(),
      'Paneer Tikka': PaneerTikkaPage(),
      'Dal Makhani': DalMakhaniPage(),
    };

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => pages[recipeName] ?? Container()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite Recipes'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: favoriteRecipes.map((recipeName) {
              String imagePath = favoriteDetails[recipeName] ?? '';

              return GestureDetector(
                onTap: () {
                  navigateToRecipe(recipeName);
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 2),
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
                          height: 200,
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
            }).toList(),
          ),
        ),
      ),
    );
  }
}
