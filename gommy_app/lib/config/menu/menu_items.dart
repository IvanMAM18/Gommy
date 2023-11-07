import 'package:flutter/material.dart';

class MenuItem {
  final String link;
  final IconData icon;

  const MenuItem({
    required this.link,
    required this.icon,
  });
}

const appMenuItem = <MenuItem>[

  MenuItem(
    link: '/', 
    icon: Icons.home,
  ),

  MenuItem(
    link: '/profile', 
    icon: Icons.emoji_people_rounded
  ),

  MenuItem(
    link: '/activities', 
    icon: Icons.sports_esports
  ),

  MenuItem(
    link: '/config', 
    icon: Icons.settings
  ),

];
