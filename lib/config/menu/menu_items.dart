import 'package:flutter/material.dart';


class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subtitle, 
    required this.link, 
    required this.icon
  });

}

const appMenuItems = <MenuItem>[

  MenuItem(
    title: 'Botones', 
    subtitle: 'Varios botones en flutter', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined
  ),

  MenuItem(
    title: 'Tarjetas', 
    subtitle: 'Contenedor estilizado', 
    link: '/cards', 
    icon: Icons.credit_card
  ),
  MenuItem(
    title: 'App tutorial', 
    subtitle: 'app tutorial', 
    link: '/app_tutorial', 
    icon: Icons.app_registration
  ),
  MenuItem(
    title: 'infinite_scrolls', 
    subtitle: 'infinite_scrolls', 
    link: '/infinite_scrolls', 
    icon: Icons.app_registration
  ),
  MenuItem(
    title: 'progress', 
    subtitle: 'progress', 
    link: '/progress', 
    icon: Icons.add_to_drive_outlined
  ),
  MenuItem(
    title: 'snackbar', 
    subtitle: 'snackbar', 
    link: '/snackbar', 
    icon: Icons.bar_chart_rounded
  ),
  MenuItem(
    title: 'UI Control', 
    subtitle: 'UI Control', 
    link: '/ui_controls', 
    icon: Icons.control_point_outlined
  ),
  MenuItem(
    title: 'animated_screen', 
    subtitle: 'Animated', 
    link: '/Animated', 
    icon: Icons.animation_outlined
  ),


]; 