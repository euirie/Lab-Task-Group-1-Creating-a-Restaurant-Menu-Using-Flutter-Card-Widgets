import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant Menu',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Restaurant Menu',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 26,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            _buildMenuCard('Vegetable Pizza'),
            _buildMenuCard('Chicken Pizza'),
            _buildMenuCard('Cheese Pizza'),
          ],
        ),
      ),
    );
  }

  // A helper widget to create identical cards cleanly
  Widget _buildMenuCard(String title) {
    return Card(
      color: Colors.orange, 
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.orangeAccent.withOpacity(0.5), 
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  '🍕', 
                  style: TextStyle(fontSize: 45),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}