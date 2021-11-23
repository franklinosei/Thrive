import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thrive Pharmacy'),
        actions: [
          // action button
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: const Color(0xFFF8F8FB),
      body: Column(
        children: [
          Row(
            children: [],
          )
        ],
      ),
    );
  }
}
