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
    title: 'Riverpod Counter', 
    subtitle: 'Introducción a Riverpod', 
    link: '/counter_screen', 
    icon: Icons.add
  ),

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
    title: 'progress', 
    subtitle: 'Generales y Controlados', 
    link: '/progress', 
    icon: Icons.input_sharp //.refresh_rounded 
  ),
  MenuItem(
    title: 'Snackbar y Diàlogos', 
    subtitle: 'Indicadores en pantalla', 
    link: '/snackbar', 
    icon: Icons.speaker_notes
  ),
  MenuItem(
    title: 'Animated container', 
    subtitle: 'Statefull widget animado', 
    link: '/Animated', 
    icon: Icons.animation_outlined
  ),
  MenuItem(
    title: 'UI Control + Tiles', 
    subtitle: 'Series de controles de Flutter', 
    link: '/ui_controls', 
    icon: Icons.car_rental_sharp
  ),
  MenuItem(
    title: 'Introducción a la aplicación', 
    subtitle: 'Tutorial introductorio', 
    link: '/app_tutorial', 
    icon: Icons.app_shortcut_rounded
  ),
  MenuItem(
    title: 'InfiniteScroll y Pull', 
    subtitle: 'Listas infinitas y pull to refresh', 
    link: '/infinite_scrolls', 
    icon: Icons.list_alt_rounded
  ),
  MenuItem(
    title: 'Cambiar tema', 
    subtitle: 'Cambiar el tema de la aplicación', 
    link: '/theme_changer', 
    icon: Icons.color_lens_outlined
  ),



]; 