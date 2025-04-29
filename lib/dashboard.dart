import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'settings_page.dart'; // Import your SettingsPage
import 'north_indian_page.dart'; // Import your NorthIndianPage
import 'south_indian_page.dart'; // Import your SouthIndianPage
import 'italian_page.dart'; // Import your ItalianPage
import 'chinese_page.dart'; // Import your ChinesePage
import 'favourites.dart'; // Import your FavouritesPage
import 'package:shared_preferences/shared_preferences.dart'; // Import for SharedPreferences
import 'package:flutter/services.dart'; // Import for SystemNavigator.pop()

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<String> imgList = [
    'images/img.png',
    'images/img_1.png',
    'images/img_2.png',
    // Add more image paths as needed
  ];

  DateTime? lastPressed;
  List<String> favoriteRecipes = [];

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      favoriteRecipes = prefs.getStringList('favoriteRecipes') ?? [];
    });
  }

  void navigateToPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  Future<bool> _onWillPop() async {
    final now = DateTime.now();
    final maxDuration = Duration(seconds: 2);
    final isWarning = lastPressed == null || now.difference(lastPressed!) > maxDuration;

    if (isWarning) {
      lastPressed = DateTime.now();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Press back again to exit'),
          duration: Duration(seconds: 2),
        ),
      );
      return Future.value(false);
    } else {
      SystemNavigator.pop();
      return Future.value(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 50),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
                items: imgList.map((item) => Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Adjust border radius as needed
                    child: Image.asset(
                      item,
                      fit: BoxFit.cover,
                      width: 1000,
                    ),
                  ),
                )).toList(),
              ),
            ),
            SizedBox(height: 20), // Add spacing between carousel and buttons
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  {"title": "", "image": "images/img_4.png", "page": NorthIndianPage()},
                  {"title": "", "image": "images/img_5.png", "page": SouthIndianPage()},
                  {"title": "", "image": "images/img_6.png", "page": ItalianPage()},
                  {"title": "", "image": "images/img_7.png", "page": ChinesePage()},
                ].map((item) {
                  String title = item['title'] as String; // Explicit cast to String
                  String image = item['image'] as String; // Explicit cast to String
                  Widget page = item['page'] as Widget;   // Explicit cast to Widget

                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20), // Adjust border radius as needed
                          child: Image.asset(
                            image,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            navigateToPage(context, page);
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                            elevation: MaterialStateProperty.all<double>(0), // No elevation
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20), // Same as image border radius
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                title,
                                style: TextStyle(
                                  color: Colors.black, // Adjust text color as needed
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_menu),
              label: '', // Dishes
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '', // Favorites
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '', // Settings
            ),
          ],
          currentIndex: 0, // Default selected index
          selectedItemColor: Colors.amber[800],
          onTap: (index) {
            if (index == 1) { // Favorites icon tapped
              navigateToPage(context, FavouritesPage());
            } else if (index == 2) { // Settings icon tapped
              navigateToPage(context, SettingsPage());
            }
            // Handle other navigation logic here
            // Example: if (index == 0) { Navigator.push(context, MaterialPageRoute(builder: (context) => DishesPage())); }
          },
        ),
      ),
    );
  }
}
