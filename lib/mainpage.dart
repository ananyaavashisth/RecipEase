import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';
import 'dashboard.dart';
import 'main_page.dart';
import 'recipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showSliderButton = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRect(
                  child: Image.asset(
                    'images/img_3.png', // Replace with your app image
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 250),
              ],
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 100,
            child: Visibility(
              visible: _showSliderButton,
              child: SliderButton(
                action: () async {
                  setState(() {
                    _showSliderButton = false; // Hide SliderButton
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  ).then((_) {
                    setState(() {
                      _showSliderButton = true; // Show SliderButton when returning from LoginPage
                    });
                  });
                },
                label: Center(
                  child: Text(
                    "Slide to Next",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff4a4a4a),
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                icon: Center(
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
                width: MediaQuery.of(context).size.width - 32,
                radius: 40,
                buttonColor: Color(0xffceb9ff),
                backgroundColor: Color(0xffdbdeea),
                highlightedColor: Colors.white,
                baseColor: Colors.black38,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true; // Flag to toggle password visibility

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove the back button
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon(Icons.person), // Icon for username
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock), // Icon for password
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
                obscureText: _obscurePassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 90),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    );

                    Future.delayed(Duration(seconds: 2), () {
                      Navigator.pop(context); // Close the progress dialog
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DashboardPage()),
                      ).then((_) {
                        setState(() {
                          _usernameController.clear();
                          _passwordController.clear();
                        });
                      });
                    });
                  }
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
                  {"title": "North Indian", "image": "images/img_4.png", "page": NorthIndianPage()},
                  {"title": "South Indian", "image": "images/img_5.png", "page": SouthIndianPage()},
                  {"title": "Italian", "image": "images/img_6.png", "page": ItalianPage()},
                  {"title": "Chinese", "image": "images/img_7.png", "page": ChinesePage()},
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
