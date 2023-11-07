import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gommy_app/config/menu/menu_items.dart';

class MainUserScreen extends StatefulWidget {
  static const String name = 'main_user_screen';

  const MainUserScreen({super.key});

  @override
  State<MainUserScreen> createState() => _MainUserScreenState();
}

class _MainUserScreenState extends State<MainUserScreen> {
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
          width: 300,
          height: 400,
          decoration: BoxDecoration(
            color: const Color(0xFFFFD079),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(' '),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        ' NIVEL   ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.lock_open,
                        color: Colors.black,
                        size: 35,
                      ),
                      Text('   ')
                    ],
                  ),
                ],
              ),
              const Text(
                'ALFABETO',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
              const Text(
                'Empieza conociendo el\n abecedario y vocales',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Proceso',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 2),
                      LinearProgressIndicator(
                        backgroundColor: Colors.white,
                        color: Colors.black87,
                        value: 0.0,
                        minHeight: 20,
                      ),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              RawMaterialButton(
                onPressed: () {
                  context.push('/activities');
                },
                shape: CircleBorder(),
                fillColor: Colors.white,
                constraints: const BoxConstraints.tightFor(
                  width: 130,
                  height: 130,
                ),
                child: const Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                  size: 80,
                ),
              )
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

class _MenuOptions extends StatelessWidget {
  const _MenuOptions();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: appMenuItem.length,
        itemBuilder: (context, index) {
          final menuItem = appMenuItem[index];
          return _MenuTitleIcon(menuItem: menuItem);
        });
  }
}

class _MenuTitleIcon extends StatelessWidget {
  const _MenuTitleIcon({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ListTile(
        leading: Icon(menuItem.icon, color: Colors.blue),
        onTap: () {
          //TODO: navegar a otra pagina
          context.push(menuItem.link);
          //context.push(CardsScreen.name);
        },
      ),
    );
  }
}
/*
    return Container(
      color: const Color(0xFFFFF5E2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              // Acción al presionar el botón
            },
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(), // Hace que el botón sea redondo
              padding: EdgeInsets.all(16), // Cambia el tamaño del botón aquí
              primary: Colors.blue, // Cambia el color de fondo aquí
            ),
            child: const Icon(
              Icons.favorite,
              color: Colors.white, // Cambia el color del icono aquí
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Acción al presionar el botón
            },
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(), // Hace que el botón sea redondo
              padding: EdgeInsets.all(16), // Cambia el tamaño del botón aquí
              primary: const Color(0xFFFF7979), // Cambia el color de fondo aquí
            ),
            child: const Icon(
              Icons.home,
              color: Colors.black, // Cambia el color del icono aquí
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Acción al presionar el botón
            },
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(), // Hace que el botón sea redondo
              padding: EdgeInsets.all(16), // Cambia el tamaño del botón aquí
              primary: const Color(0xFF84FF79), // Cambia el color de fondo aquí
            ),
            child: const Icon(
              Icons.sports_esports,
              color: Colors.black, // Cambia el color del icono aquí
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Acción al presionar el botón
            },
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(), // Hace que el botón sea redondo
              padding: EdgeInsets.all(16), // Cambia el tamaño del botón aquí
              primary:
                  const Color(0xFFFFA979E), // Cambia el color de fondo aquí
            ),
            child: const Icon(
              Icons.settings,
              color: Colors.black, // Cambia el color del icono aquí
            ),
          ),
        ],
      ),
    );
  }*/

