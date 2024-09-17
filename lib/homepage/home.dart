import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int _selectedIndex = 0;

  static const List<Widget> widgetOptions = <Widget>[
    ToyStoreScreen(),
    Text(
      'Empty',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      if (index == 0) {
        _selectedIndex = index;
      } else if (index == 1) {
        _selectedIndex = index;
      } else if (index == 2) {
        Navigator.pushNamed(context, '/profile');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toy Store'),
      ),
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

class ToyStoreScreen extends StatelessWidget {
  const ToyStoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: <Widget>[
          ToyItem(
            name: 'Mobil Sport Mainan',
            price: 'Rp 297.500',
            imageUrl: 'assets/carsport.jpg',
          ),
          ToyItem(
            name: 'Teddy Bear',
            price: 'Rp 150.000',
            imageUrl: 'assets/teddy.jpg',
          ),
          ToyItem(
            name: 'Bebek Mainan',
            price: 'Rp 30.000',
            imageUrl: 'assets/bebek.png',
          ),
          ToyItem(
            name: 'Lato-Lato',
            price: 'Rp 12.000',
            imageUrl: 'assets/cat.jpg',
          ),
          ToyItem(
            name: 'Fidget Spinner',
            price: 'Rp 69.000',
            imageUrl: 'assets/spinner.jpg',
          ),
        ],
      ),
    );
  }
}

class ToyItem extends StatelessWidget {
  final String name;
  final String price;
  final String imageUrl;

  const ToyItem({
    required this.name,
    required this.price,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 4,
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        leading: Image.network(
          imageUrl,
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        title: Text(
          name,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          price,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
