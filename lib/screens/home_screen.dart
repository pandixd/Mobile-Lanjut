import 'package:flutter/material.dart';
import 'package:flutter_app/screens/login_screen.dart';
import 'package:flutter_app/screens/profile_screen.dart';
import 'package:flutter_app/widgets/bottom_navigation_bar.dart';
import 'package:flutter_app/screens/grid_product_card.dart';
import 'package:flutter_app/screens/list_product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const ProfileScreen()),
      );
    } else if (index == 2) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
        (route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.person_2_sharp, size: 20),
                    SizedBox(width: 8),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.notifications_none, size: 20),
                    SizedBox(width: 16),
                    Icon(Icons.settings, size: 20),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Guest',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Widget Grid View',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 5),
            SizedBox(
              height: 220, 
              child: GridView.count(
                scrollDirection: Axis.horizontal,
                crossAxisCount: 1,
                childAspectRatio: 1.50,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0), 
                    child: SizedBox(
                      width: 100,
                      child: GridProductCard(
                        artist: 'artist 1', 
                        song: 'song name',
                        imageAsset: 'images/gambar1.jpeg', 
                      ),
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0), 
                    child: GridProductCard(
                      artist: 'artist 2', 
                      song: 'song name',
                      imageAsset: 'images/gambar1.jpeg', 
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0), 
                    child: GridProductCard(
                      artist: 'artist 3', 
                      song: 'song name',
                      imageAsset: 'images/gambar1.jpeg', 
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0), 
                    child: GridProductCard(
                      artist: 'artist 4', 
                      song: 'song name',
                      imageAsset: 'images/gambar1.jpeg', 
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Widget List View',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 5),
            Expanded(
              child: ListView(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0), 
                    child: SizedBox(
                      width: 100,
                      child: ListProductCard(
                        headline: 'Product 1', 
                        description: 'description',
                        imageAsset: 'images/gambar2.jpeg', 
                      ),
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0), 
                    child: ListProductCard(
                      headline: 'Product 2', 
                      description: 'description',
                      imageAsset: 'images/gambar2.jpeg', 
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0), 
                    child: ListProductCard(
                      headline: 'Product 3', 
                      description: 'description',
                      imageAsset: 'images/gambar2.jpeg', 
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0), 
                    child: ListProductCard(
                      headline: 'Product 4', 
                      description: 'description',
                      imageAsset: 'images/gambar2.jpeg', 
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
