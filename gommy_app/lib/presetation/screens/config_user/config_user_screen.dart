import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConfigUserScreen extends StatefulWidget {
  static const String name = 'config_user_screen';
  const ConfigUserScreen({super.key});

  @override
  State<ConfigUserScreen> createState() => _ConfigUserScreenState();
}

class _ConfigUserScreenState extends State<ConfigUserScreen> {
  int clickCounter = 0;
  var pages = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Image.asset('./assets/images/logoGomy.png', width: 80, height: 40),
        actions: const [
          Row(
            children: [
              Icon(Icons.check, color: Colors.black),
              Text(
                ' 0   ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Icon(Icons.grade, color: Colors.black),
              Text(
                ' 0   ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Icon(Icons.favorite, color: Colors.black),
              Text(
                ' 0   ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
        backgroundColor: const Color(0xFFFFE6B9),
      ),
      backgroundColor: const Color(0xFFFFE6B9),
      body: Center(
        child: Container(
          width: 350,
          height: 140,
          decoration: BoxDecoration(
            color: const Color(0xFFFFF5E2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
              ),
              SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(' '),
                      Text(
                        '        Config',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.settings,
                        color: Colors.black,
                        size: 80,
                      ),
                      Text('   ')
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFFFF5E2),
        onTap: (int value) {
          setState(() {
            pages = value;
            if (pages == 0) {
              context.push('/');
            } else if (pages == 1) {
              context.push('/profile');
            } else {
              context.push('/config');
            }
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_esports),
            label: 'Juego',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Opciones',
          ),
        ],
        selectedItemColor: Colors.black,
      ), //_MenuOptions(),
    );
  }
}
