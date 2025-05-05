import 'package:flutter/material.dart';
import 'package:shoeapp/components/bottom_nav_bar.dart';
import 'package:shoeapp/pages/shop_page.dart';
import 'package:shoeapp/pages/cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: const Icon(Icons.menu, color: Colors.black),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // logo
            Column(children: [
              DrawerHeader(
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),

                //Image.asset(
                //'lib/pictures/001-nike-logos-swoosh-black.jpg',
                // color: Colors.white,
                //)
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                // child: Divider(color: Colors.grey[800]),
              ),
              // other pages
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  title: Text(
                    'About',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ]),

            const Padding(
              padding: EdgeInsets.only(left: 25.0, bottom: 25),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
