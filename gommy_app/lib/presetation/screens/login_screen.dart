import 'package:flutter/material.dart';

class ActivitiesScreen extends StatefulWidget {
  const ActivitiesScreen({super.key});

  @override
  State<ActivitiesScreen> createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
        const Text(
            'Gommy',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ), 
        actions: [
          
          IconButton(
            icon: const Icon(Icons.check),
            color: const Color.fromARGB(255, 0, 0, 0),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
          const Center(
            child: Text(
              '0',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.grade),
            color: const Color.fromARGB(255, 0, 0, 0),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
          const Center(
            child: Text(
              '0',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            color: const Color.fromARGB(255, 0, 0, 0),
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
          const Center(
            child: Text(
              '0',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ],
        backgroundColor: const Color(0xFFFFE6B9),
      ),
      backgroundColor: const Color(0xFFFFE6B9),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style:
                TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
          ],
        ),
      ),
    );
  }
}